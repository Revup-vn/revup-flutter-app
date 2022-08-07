import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geoflutterfire2/geoflutterfire2.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:revup_core/core.dart';
import 'package:uuid/uuid.dart';

import '../../find_provider/models/provider_data.u.dart';
import '../models/message_data.dart';

part 'add_message_bloc.freezed.dart';
part 'add_message_event.dart';
part 'add_message_state.dart';

class AddMessageBloc extends Bloc<AddMessageEvent, AddMessageState> {
  AddMessageBloc(
    this._userStore,
    this._repairRecord,
    this._maybeUser,
    this.providerData,
    this.movingFee,
  ) : super(const _Initial()) {
    on<AddMessageEvent>(_onEvent);
  }

  final IStore<AppUser> _userStore;
  final IStore<RepairRecord> _repairRecord;
  final Option<AppUser> _maybeUser;
  final ProviderData providerData;
  final int movingFee;

  FutureOr<void> _onEvent(
    AddMessageEvent event,
    Emitter<AddMessageState> emit,
  ) async {
    await event.when(
      started: () {
        emit(const AddMessageState.success());
      },
      submitted: (messageData) async {
        emit(const AddMessageState.loading());
        final consumer = _maybeUser.getOrElse(() => throw NullThrownError());
        final boxRprRecord = Hive.box<dynamic>('repairRecord');
        await boxRprRecord.put('pid', providerData.id);
        final vehicle = boxRprRecord.get('vehicle', defaultValue: '') as String;
        final toLat = boxRprRecord.get('toLat', defaultValue: 0.0) as double;
        final toLng = boxRprRecord.get('toLng', defaultValue: 0.0) as double;
        final maybeProviderData = (await _userStore.get(providerData.id))
            .fold<Option<AppUser>>(
              (l) => none(),
              some,
            )
            .getOrElse(() => throw NullThrownError());
        final fromPoint = (maybeProviderData.toJson()['cur_location']
            as Map<String, dynamic>)['geopoint'] as GeoPoint;
        await _repairRecord.create(
          RepairRecord.pending(
            id: const Uuid().v4(),
            cid: consumer.uuid,
            pid: providerData.id,
            created: DateTime.now(),
            desc: messageData.desc ?? '',
            vehicle: vehicle,
            money: movingFee,
            from: GeoFirePoint(fromPoint.latitude, fromPoint.longitude),
            to: GeoFirePoint(toLat, toLng),
            services: <OptionalService>[],
          ),
        );
      },
    );
  }
}
