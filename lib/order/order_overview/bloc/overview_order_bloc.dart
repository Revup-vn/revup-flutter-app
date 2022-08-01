import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/overview_order_model.dart';

part 'overview_order_event.dart';
part 'overview_order_state.dart';
part 'overview_order_bloc.freezed.dart';

class OverviewOrderBloc extends Bloc<OverviewOrderEvent, OverviewOrderState> {
  OverviewOrderBloc(this.providerID) : super(const _Initial()) {
    on<OverviewOrderEvent>(_onEvent);
  }
  final String providerID;
  FutureOr<void> _onEvent(
    OverviewOrderEvent event,
    Emitter<OverviewOrderState> emit,
  ) {
    event.when(
      started: () {
        emit(
          const OverviewOrderState.loading(),
        );
        emit(
          OverviewOrderState.loadDataSuccess(overviewOrderData: overViewModel),
        );
      },
    );
  }

  final overViewModel = OverviewOrderModel(
    providerID: '1',
    providerAvatarImg:
        'https://image.thanhnien.vn/w1024/Uploaded/2022/pwivoviu/2022_01_21/anh-1-9607.jpg',
    proviverPhoneNumber: '+84386624076',
    videoCallID: '1',
    providerName: 'Nguyễn Thị Sửa',
    distance: '2,7',
  );
}
