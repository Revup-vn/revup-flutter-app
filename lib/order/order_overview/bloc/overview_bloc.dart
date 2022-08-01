import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'overview_event.dart';
part 'overview_state.dart';
part 'overview_bloc.freezed.dart';

class OverviewBloc extends Bloc<OverviewEvent, OverviewState> {
  OverviewBloc() : super(const _Initial()) {
    on<OverviewEvent>(_onEvent);
  }
  FutureOr<void> _onEvent(
    OverviewEvent event,
    Emitter<OverviewState> emit,
  ) {
    event.when(
      started: () {},
      selectedProduct: (totalFeeService) {
        emit(
          OverviewState.ready(
            totalFeeService: totalFeeService,
            ready: int.parse(totalFeeService.replaceAll('.', '')) != 0,
          ),
        );
      },
      arrowButtonPressed: (currenStateButton) {
        emit(
          OverviewState.showListFee(
            showListFee: !currenStateButton,
          ),
        );
      },
    );
  }
}
