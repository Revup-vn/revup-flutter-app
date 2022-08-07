import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:revup_core/core.dart';

import '../../repairer_profile/models/record_rating_data.dart';
import '../models/provider_data.dart';
import '../models/service_data.dart';

part 'invoice_bloc.freezed.dart';
part 'invoice_event.dart';
part 'invoice_state.dart';

class InvoiceBloc extends Bloc<InvoiceEvent, InvoiceState> {
  InvoiceBloc(
    this._userStore,
    this._repairRecord,
    this.providerID,
    this.storeRepository,
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
                    r.length(),
                r.length(),
              ),
            )
            .fold<Option<Map<String, dynamic>>>(
              (l) => none(),
              (r) => some(r.toMap()),
            )
            .getOrElse(() => throw NullThrownError());

        //fetch data repairrecord,
        final maybeRepairRecord = (await _repairRecord.where(
          'pid',
          isEqualTo: providerID,
        ))
            .map<IList<Option<RepairRecord>>>(
              (r) => r.map(
                (a) => a.maybeMap<Option<RepairRecord>>(
                  orElse: none,
                  started: some,
                ),
              ),
            )
            .map<IList<RepairRecord>>(
              (r) => r.filter((a) => a.isSome()).map(
                    (a) => a.getOrElse(
                      () => throw NullThrownError(),
                    ),
                  ),
            )
            .fold<IList<RepairRecord>>((l) => nil(), (r) => r);

        final maybePaymentData = maybeRepairRecord.map(
          storeRepository.repairPaymentRepo,
        );

        final maybePaymentList = await Future.wait(
          maybePaymentData.map((a) async => a.all()).toIterable(),
        );

        final paymentList = IList.from(
          maybePaymentList.where((element) => element.isRight()).expand(
                (element) => element
                    .getOrElse(() => throw NullThrownError())
                    .toIterable(),
              ),
        );

        final listService = paymentList.map(
          (a) => ServiceData(
            serviceName: a.name,
            serviceFee: a.amount,
          ),
        );
        final total = listService
            .map((a) => a.serviceFee)
            .foldLeft<int>(0, (previous, a) => previous + a);

        maybeProviderData.fold(
          () => emit(
            const InvoiceState.loading(),
          ),
          (provider) {
            emit(
              InvoiceState.loadingDataSuccess(
                data: ProviderData.fromDtos(
                  provider,
                  double.parse(ratingData['value1'].toString()),
                  int.parse(ratingData['value2'].toString()),
                ),
                ready: true,
                total: total,
                service: listService,
              ),
            );
          },
        );
      },
    );
  }

  final String providerID;
}
