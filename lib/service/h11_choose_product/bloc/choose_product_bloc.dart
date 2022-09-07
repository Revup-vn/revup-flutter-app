import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:revup_core/core.dart';

import '../../../repairer_profile/models/service_data.u.dart';

part 'choose_product_bloc.freezed.dart';
part 'choose_product_event.dart';
part 'choose_product_state.dart';

class ChooseProductBloc extends Bloc<ChooseProductEvent, ChooseProductState> {
  ChooseProductBloc(
    this.providerId,
    this.storeRepository,
    this._repairRecord,
    this._serviceData,
    this.recordId,
  ) : super(const _Initial()) {
    on<ChooseProductEvent>(_onEvent);
  }
  final String providerId;
  final ServiceData _serviceData;
  final IStore<RepairRecord> _repairRecord;
  final StoreRepository storeRepository;
  final String recordId;
  final productData = <RepairProduct>[];

  FutureOr<void> _onEvent(
    ChooseProductEvent event,
    Emitter<ChooseProductState> emit,
  ) async {
    await event.when(
      started: () async {
        emit(const ChooseProductState.loading());

        final maybeRepairRecord = (await _repairRecord.get(recordId))
            .map<Option<RepairRecord>>(
              (r) => r.maybeMap(
                accepted: some,
                started: some,
                orElse: none,
              ),
            )
            .fold<Option<RepairRecord>>(
              (l) => none(),
              (r) => r,
            );
        if (maybeRepairRecord.isNone()) {
          emit(const ChooseProductState.failure());
        } else {
          final repairRecord =
              maybeRepairRecord.getOrElse(() => throw NullThrownError());

          final products = (await storeRepository
                  .repairProductRepo(
                    AppUserDummy.dummyProvider(providerId),
                    RepairCategoryDummy.dummy(
                      repairRecord.vehicle == 'car' ? 'Oto' : 'Xe máy',
                    ),
                    RepairServiceDummy.dummy(_serviceData.name),
                  )
                  .where('active', isEqualTo: true))
              .fold<IList<RepairProduct>>((l) => ilist([]), (r) => r);

          productData.addAll(products.toIterable());

          emit(ChooseProductState.success(products));
        }
      },
      submitted: (product, recordId, onRoute) async {
        emit(const ChooseProductState.loading());
        if (!productData.any((element) => element.name == product)) {
          emit(const ChooseProductState.failure());

          return;
        }
        final maybeRecord =
            (await _repairRecord.get(recordId)).fold<Option<RepairRecord>>(
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

        await (storeRepository.repairPaymentRepo(record)).update(
          PaymentService.pending(
            serviceName: _serviceData.name,
            moneyAmount: _serviceData.serviceFee,
            products: [
              PaymentProduct(
                name: selected.name,
                unitPrice: selected.price,
                quantity: 1,
              )
            ],
            isOptional: _serviceData.isOptional,
          ),
        );

        onRoute();
      },
    );
  }
}
