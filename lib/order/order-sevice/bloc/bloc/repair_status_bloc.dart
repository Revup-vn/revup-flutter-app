import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:revup_core/core.dart';

part 'repair_status_bloc.freezed.dart';
part 'repair_status_event.dart';
part 'repair_status_state.dart';

class RepairStatusBloc extends Bloc<RepairStatusEvent, RepairStatusState> {
  RepairStatusBloc(
    this.recordId,
    this.recordRepos,
    this.sr,
  ) : super(const _Initial()) {
    on<RepairStatusEvent>(_onEvent);
  }
  final String recordId;
  final IStore<RepairRecord> recordRepos;
  final StoreRepository sr;
  FutureOr<void> _onEvent(
    RepairStatusEvent event,
    Emitter<RepairStatusState> emit,
  ) async {
    await event.when(
      started: () async {
        emit(const RepairStatusState.loading());
        final maybeRepairRecord = (await recordRepos.get(recordId))
            .map<Option<RepairRecord>>(
              (r) => r.maybeMap(
                orElse: none,
                started: some,
              ),
            )
            .fold<Option<RepairRecord>>((l) => none(), (r) => r);

        if (maybeRepairRecord.isNone()) {
          emit(const RepairStatusState.failure());
        } else {
          final maybePaymentData = await sr
              .repairPaymentRepo(
                maybeRepairRecord.getOrElse(() => throw NullThrownError()),
              )
              .all();

          final paymentList =
              maybePaymentData.fold((l) => nil<PaymentService>(), (r) => r);

          final listOptionService =
              paymentList.map<Option<Tuple2<String, int>>>(
            (a) => a.when(
              pending: (serviceName, moneyAmount, products, isOptional) => some(
                tuple2<String, int>(
                  serviceName,
                  moneyAmount + (isOptional ? 0 : products[0].unitPrice),
                ),
              ),
              needToVerify: (serviceName, desc) => none(),
              paid: (serviceName, moneyAmount, products, paidIn) => some(
                tuple2<String, int>(
                  serviceName,
                  moneyAmount +
                      (products.isNotEmpty ? products[0].unitPrice : 0),
                ),
              ),
            ),
          );
          final listService = listOptionService.filter((a) => a.isSome()).map(
                (a) => a.getOrElse(
                  () => throw NullThrownError(),
                ),
              );
          final total = listService.foldLeft<int>(
              0, (previous, a) => previous + a.value2);
          emit(
            RepairStatusState.success(
              service: listService.toList(),
              total: total,
            ),
          );
        }
      },
    );
  }
}
