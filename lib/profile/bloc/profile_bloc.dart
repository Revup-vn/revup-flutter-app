import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../account/model/user_model.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(const _Initial()) {
    on<Started>((event, emit) {
      emit(const ProfileState.loading());
    });
    on<Submitted>((event, emit) {
      log('message');
      emit(
        ProfileState.loaded(
          address: event.user.address,
          email: event.user.email,
          date: event.user.date,
          fullName: event.user.name,
          phone: event.user.phone,
        ),
      );
    });
  }
}
