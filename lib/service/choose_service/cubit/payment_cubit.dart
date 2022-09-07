import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:revup_core/core.dart';

part 'payment_cubit.freezed.dart';
part 'payment_state.dart';

class PaymentCubit extends Cubit<PaymentState> {
  PaymentCubit(
    this.momoVn,
    this._userStore,
    this._repairRecord,
    this.storeRepository,
    this.providerId,
  ) : super(const PaymentState.initial());
  final MomoCubit momoVn;
  late final StreamSubscription<MomoState> _s;
  final IStore<AppUser> _userStore;
  final IStore<RepairRecord> _repairRecord;
  final StoreRepository storeRepository;
  final String providerId;

  Future<Unit> watch() async {
    _s = momoVn.stream.listen((paymentState) {
      paymentState.maybeWhen(
        success: (res) async {
          final boxRprRecord = Hive.box<dynamic>('repairRecord');
          final recordId = boxRprRecord.get('id') as String;
          // get latest provider fcm token
          final provider = (await _userStore.get(providerId))
              .fold<Option<AppUser>>(
                (l) => none(),
                some,
              )
              .getOrElse(() => throw NullThrownError());

          final tokens = (await storeRepository
                  .userNotificationTokenRepo(provider)
                  .all())
              .map(
                (r) => r.sort(
                  orderBy(StringOrder.reverse(), (a) => a.created.toString()),
                ),
              )
              .fold((l) => throw NullThrownError(), (r) => r.toList());
          emit(
            PaymentState.success(
              token: tokens.first.token,
              recordId: recordId,
            ),
          );
        },
        error: (res) async {
          final boxRprRecord = Hive.box<dynamic>('repairRecord');
          final recordId = boxRprRecord.get('id') as String;
          (await _repairRecord.get(recordId)).toOption().fold(
                () => emit(PaymentState.failure(recordId: recordId)),
                (a) async => _repairRecord.update(
                  RepairRecord.aborted(
                    id: a.id,
                    cid: a.cid,
                    pid: a.pid,
                    created: a.created,
                    desc: a.desc,
                    vehicle: a.vehicle,
                    money: 0,
                    from: a.from,
                    to: a.to,
                  ),
                ),
              );
          emit(PaymentState.failure(recordId: recordId));
        },
        orElse: () => false,
      );
    });
    return unit;
  }

  @override
  Future<void> close() async {
    await _s.cancel();
    return super.close();
  }
}
