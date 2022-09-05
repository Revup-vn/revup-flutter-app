import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:revup_core/core.dart';

part 'home_record_cubit.freezed.dart';
part 'home_record_state.dart';

class HomeRecordCubit extends Cubit<HomeRecordState> {
  HomeRecordCubit(this._repairRecord, this.user)
      : super(const HomeRecordState.enabled());
  final IStore<RepairRecord> _repairRecord;
  final AppUser user;
  StreamSubscription<QuerySnapshot<Map<String, dynamic>>>? _s;
  Future<Unit> watch() async {
    _s = _repairRecord
        .collection()
        .where('cid', isEqualTo: user.uuid)
        .where('type', whereIn: ['1', '2', '4', '5'])
        .snapshots()
        .listen((e) {
          if (e.size == 0) {
            emit(const HomeRecordState.enabled());
          } else {
            emit(const HomeRecordState.disabled());
          }
        });
    return unit;
  }

  @override
  Future<void> close() async {
    await _s?.cancel();
    return super.close();
  }
}
