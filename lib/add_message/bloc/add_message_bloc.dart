import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:revup_core/core.dart';

import '../models/message_data.dart';

part 'add_message_bloc.freezed.dart';
part 'add_message_event.dart';
part 'add_message_state.dart';

class AddMessageBloc extends Bloc<AddMessageEvent, AddMessageState> {
  AddMessageBloc(
    this._userStore,
    this._repairRecord,
    this._maybeUser,
  ) : super(const _Initial()) {
    on<AddMessageEvent>(_onEvent);
  }

  final IStore<AppUser> _userStore;
  final IStore<RepairRecord> _repairRecord;
  final Option<AppUser> _maybeUser;

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
      },
    );
  }
}
