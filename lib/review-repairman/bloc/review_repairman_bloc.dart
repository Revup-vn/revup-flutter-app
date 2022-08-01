import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_repairman_bloc.freezed.dart';
part 'review_repairman_event.dart';
part 'review_repairman_state.dart';

class ReviewRepairmanBloc
    extends Bloc<ReviewRepairmanEvent, ReviewRepairmanState> {
  ReviewRepairmanBloc() : super(const _Initial()) {
    on<ReviewRepairmanEvent>((event, emit) {
      // TODO(namngoc231): review repair bloc method
    });
  }
}
