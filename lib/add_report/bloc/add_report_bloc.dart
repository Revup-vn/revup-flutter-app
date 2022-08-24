import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:revup_core/core.dart';

part 'add_report_bloc.freezed.dart';
part 'add_report_event.dart';
part 'add_report_state.dart';

class AddReportBloc extends Bloc<AddReportEvent, AddReportState> {
  AddReportBloc(
    this.recordID,
    this.storeRepos,
  ) : super(const _Initial()) {
    on<AddReportEvent>(_onEvent);
  }
  final String recordID;
  final StoreRepository storeRepos;
  FutureOr<void> _onEvent(
    AddReportEvent event,
    Emitter<AddReportState> emit,
  ) async {
    event.when(
      started: () {},
      submited: (recordID) {},
    );
  }
}
