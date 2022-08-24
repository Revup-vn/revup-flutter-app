import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:revup_core/core.dart';

import '../../../repairer_profile/models/service_data.u.dart';

part 'choose_product_bloc.freezed.dart';
part 'choose_product_event.dart';
part 'choose_product_state.dart';

class ChooseProductBloc extends Bloc<ChooseProductEvent, ChooseProductState> {
  ChooseProductBloc(
    this.providerId,
    this._userStore,
    this.storeRepository,
    this._repairRecord,
    this._serviceData,
    this.catAndSv,
  ) : super(const _Initial()) {
    on<ChooseProductEvent>(_onEvent);
  }
  final String providerId;
  final ServiceData _serviceData;
  final Tuple2<RepairCategory, IList<ServiceData>> catAndSv;
  final IStore<RepairRecord> _repairRecord;
  final IStore<AppUser> _userStore;
  final StoreRepository storeRepository;
  final productData = <RepairProduct>[];

  FutureOr<void> _onEvent(
    ChooseProductEvent event,
    Emitter<ChooseProductState> emit,
  ) async {
    await event.when(
      started: () async {
        emit(const ChooseProductState.loading());
        final maybeProviderData = (await _userStore.get(providerId))
            .fold<Option<AppUser>>(
              (l) => none(),
              some,
            )
            .getOrElse(() => throw NullThrownError());

        final maybeService = (await (storeRepository.repairServiceRepo(
          maybeProviderData,
          catAndSv.value1,
        )).get(_serviceData.name))
            .fold<Option<RepairService>>((l) => none(), some)
            .getOrElse(() => throw NullThrownError());

        final products = (await storeRepository
                .repairProductRepo(
                  maybeProviderData,
                  catAndSv.value1,
                  maybeService,
                )
                .all())
            .fold<IList<RepairProduct>>((l) => ilist([]), (r) => r);

        productData.addAll(products.toIterable());

        emit(ChooseProductState.success(products));
      },
      submitted: (product) async {
        emit(const ChooseProductState.loading());
        if (productData.any((element) => element.name == product)) {
          emit(const ChooseProductState.failure());

          return;
        }
        final boxRprRecord = Hive.box<dynamic>('repairRecord');
        final rcId = boxRprRecord.get('id', defaultValue: '') as String;
        final maybeRecord =
            (await _repairRecord.get(rcId)).fold<Option<RepairRecord>>(
          (l) => none(),
          some,
        );

        if (maybeRecord.isNone()) {
          emit(const ChooseProductState.failure());

          return;
        }

        final record = maybeRecord.getOrElse(() => throw NullThrownError());
        final selected =
            productData.firstWhere((element) => element.name == product);
        await (storeRepository.repairPaymentRepo(record)).create(
          PaymentService.pending(
            isOptional: false,
            serviceName: _serviceData.name,
            moneyAmount: _serviceData.serviceFee + selected.price,
            products: List.from(
              <PaymentProduct>[
                PaymentProduct(
                  name: selected.name,
                  unitPrice: selected.price,
                  quantity: 1,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
