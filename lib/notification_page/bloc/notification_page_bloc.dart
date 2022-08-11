import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../model/notification_page_model.dart';

part 'notification_page_bloc.freezed.dart';
part 'notification_page_event.dart';
part 'notification_page_state.dart';

class NotificationPageBloc
    extends Bloc<NotificationPageEvent, NotificationPageState> {
  NotificationPageBloc() : super(const _Initial()) {
    on<NotificationPageEvent>(_onEvent);
  }

  Future<void> _onEvent(
    NotificationPageEvent event,
    Emitter<NotificationPageState> emit,
  ) async {
    await event.when(
      started: () async {
        emit(const NotificationPageState.loading());

        emit(
          NotificationPageState.success(ilist([])),
        );
      },
    );
  }
}
