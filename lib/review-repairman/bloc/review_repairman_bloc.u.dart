import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_repairman_bloc.u.freezed.dart';
part 'review_repairman_event.dart';
part 'review_repairman_state.dart';

class ReviewRepairmanBloc
    extends Bloc<ReviewRepairmanEvent, ReviewRepairmanState> {
  ReviewRepairmanBloc() : super(const _Initial()) {
    on<ReviewRepairmanEvent>(_onEvent);
  }

  FutureOr<void> _onEvent(
    ReviewRepairmanEvent event,
    Emitter<ReviewRepairmanState> emit,
  ) async {
    event.when(
      started: () => emit(const ReviewRepairmanState.initial()),
      fieldFill: (rating) => emit(
        ReviewRepairmanState.ready(rating: rating),
      ),
    );
  }
}
