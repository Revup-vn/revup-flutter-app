import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:revup_core/core.dart';

import '../../h2_find_provider/models/provider_data.u.dart';
import '../../repairer_profile/models/record_rating_data.dart';
import '../models/service_data.dart';

part 'invoice_bloc.u.freezed.dart';
part 'invoice_event.dart';
part 'invoice_state.dart';

class InvoiceBloc extends Bloc<InvoiceEvent, InvoiceState> {
  InvoiceBloc(
    this._userStore,
    this._repairRecord,
    this.providerID,
    this.storeRepository,
    this.id,
  ) : super(const _Initial(ready: false)) {
    on<InvoiceEvent>(_onEvent);
  }
  final StoreRepository storeRepository;
  final IStore<AppUser> _userStore;
  final IStore<RepairRecord> _repairRecord;

  FutureOr<void> _onEvent(
    InvoiceEvent event,
    Emitter emit,
  ) async {
    await event.when(
      started: () async {
        emit(
          const InvoiceState.loading(),
        );

        //fetch data provider,
        final maybeProviderData = (await _userStore.get(providerID))
            .map(
              (aUser) => aUser.map<Option<AppUser>>(
                provider: some,
                admin: (value) => none(),
                consumer: (value) => none(),
              ),
            )
            .fold<Option<AppUser>>((l) => none(), (r) => r);

        //fetch data rating,
        final ratingData = (await _repairRecord.where(
          'pid',
          isEqualTo: providerID,
        ))
            .map<IList<Option<RecordRatingData>>>(
              (r) => r.map(
                (a) => a.maybeMap(
                  orElse: none,
                  finished: (v) => some(
                    RecordRatingData.fromDtos(v),
                  ),
                ),
              ),
            )
            .map<IList<RecordRatingData>>(
              (r) => r.filter((a) => a.isSome()).map(
                    (a) => a.getOrElse(
                      () => throw NullThrownError(),
                    ),
                  ),
            )
            .map(
              (r) => tuple2(
                r
                        .map((a) => a.feedback.rating)
                        .foldLeft<int>(0, (previous, a) => previous + a) /
                    (r.isEmpty ? 1 : r.length()),
                r.length(),
              ),
            )
            .fold<Option<Map<String, dynamic>>>(
              (l) => none(),
              (r) => some(r.toMap()),
            )
            .getOrElse(() => throw NullThrownError());

        //fetch data repairrecord,
        final maybeRepairRecord = (await _repairRecord.get(
          id,
        ))
            .map<Option<RepairRecord>>(
              (r) => r.maybeMap(
                orElse: none,
                started: some,
              ),
            )
            .map(
              (r) => r.getOrElse(
                () => throw NullThrownError(),
              ),
            )
            .getOrElse(() => throw NullThrownError());

        final maybePaymentData =
            await storeRepository.repairPaymentRepo(maybeRepairRecord).all();

        final paymentList =
            maybePaymentData.fold((l) => nil<PaymentService>(), (r) => r);

        final listOptionService = paymentList.map<Option<ServiceData>>(
          (a) => a.when(
            pending:
                (serviceName, moneyAmount, products, isOptional, isCompleted) =>
                    some(
              ServiceData.fromDtos(
                serviceName,
                moneyAmount +
                    (products.isNotEmpty
                        ? products[0].unitPrice * products[0].quantity
                        : 0),
                'pending',
                isCompleted: isCompleted,
                '',
                products: products,
              ),
            ),
            needToVerify: (serviceName, desc, imgUrl) => none(),
            paid: (serviceName, moneyAmount, products, paidIn) => some(
              ServiceData.fromDtos(
                serviceName,
                moneyAmount +
                    (products.isNotEmpty
                        ? products[0].unitPrice * products[0].quantity
                        : 0),
                'paid',
                isCompleted: true,
                '',
                products: products,
              ),
            ),
          ),
        );
        final listService = listOptionService.filter((a) => a.isSome()).map(
              (a) => a.getOrElse(
                () => throw NullThrownError(),
              ),
            );
        final total = listOptionService
            .map((a) => a.fold(() => 0, (a) => a.serviceFee))
            .foldLeft<int>(0, (previous, a) => previous + a);
        final cate = (await storeRepository
                .repairCategoryRepo(
                  maybeProviderData.getOrElse(() => throw NullThrownError()),
                )
                .get(
                  maybeRepairRecord.vehicle == 'car' ? 'Oto' : 'Xe máy',
                ))
            .getOrElse(() => throw NullThrownError());
        final listSvProvider = (await storeRepository
                .repairServiceRepo(
                  maybeProviderData.getOrElse(() => throw NullThrownError()),
                  cate,
                )
                .all())
            .fold<IList<RepairService>>((l) => nil<RepairService>(), (r) => r);
        final listSvDataWithImg = listService
            .map(
              (a) => listSvProvider.where((b) => a.serviceName == b.name).map(
                    (c) => ServiceData.fromDtos(
                      a.serviceName,
                      a.serviceFee,
                      a.state,
                      c.img,
                      isCompleted: a.isCompleted,
                      products: a.products,
                    ),
                  ),
            )
            .foldLeft<IList<ServiceData>>(
              nil<ServiceData>(),
              (previous, a) => previous.plus(a),
            );
        maybeProviderData.fold(
          () => emit(
            const InvoiceState.loading(),
          ),
          (provider) {
            emit(
              InvoiceState.loadingDataSuccess(
                data: ProviderData.fromDtos(
                  provider,
                  distance: 0,
                  duration: 0,
                  rating: double.parse(ratingData['value1'].toString()),
                  ratingCount: int.parse(ratingData['value2'].toString()),
                ),
                ready: true,
                total: total,
                service: listSvDataWithImg,
              ),
            );
          },
        );
      },
    );
  }

  final String providerID;
  final String id;
}
