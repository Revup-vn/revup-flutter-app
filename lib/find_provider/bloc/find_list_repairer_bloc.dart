import 'dart:developer';

import 'package:flutter/foundation.dart';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'find_list_repairer_event.dart';
part 'find_list_repairer_state.dart';
part 'find_list_repairer_bloc.freezed.dart';

class FindListRepairerBloc
    extends Bloc<FindListRepairerEvent, FindListRepairerState> {
  FindListRepairerBloc() : super(const _Initial(hasValue: false)) {
    on<Started>((event, emit) {
      emit(
        FindListRepairerState.initial(hasValue: event.hasValue),
      );
    });
    on<Refresh>((event, emit) {
      emit(
        const FindListRepairerState.refreshCompleted(
          listItems: [
            [
              'https://this-person-does-not-exist.com/img/avatar-f23a11a46d5096129b42a5254d3134cc.jpg',
              'Nguyen Van C',
              'Cửa hàng sửa xe A, 14A, ngõ Thanh Bình',
              '4.9',
              '109',
              '500',
              '10',
            ],
            [
              'https://this-person-does-not-exist.com/img/avatar-f23a11a46d5096129b42a5254d3134cc.jpg',
              'Nguyen Van D',
              'Cửa hàng sửa xe A, 14A, ngõ Thanh Bình',
              '4.9',
              '109',
              '500',
              '10',
            ],
          ],
        ),
      );
    });
    on<OnChanged>((event, emit) {
      emit(FindListRepairerState.valueChanged(value: event.value));
    });
    on<OnTap>((event, emit) {
      log('message');
      emit(const FindListRepairerState.pickARepairer());
    });
  }
}
