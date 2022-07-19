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
        const FindListRepairerState.refreshSuccess(
          listProvider: [],
        ),
      );
    });
    on<DropdownListChanged>((event, emit) {
      emit(
        FindListRepairerState.dropdownListChangedSuccess(
          listProvider: [],
          sortType: event.sortType,
        ),
      );
    });
  }
}
