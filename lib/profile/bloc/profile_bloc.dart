import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:revup_core/core.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc(this._userRepos) : super(const _Initial()) {
    on<ProfileEvent>(_onEvent);
  }
  final IStore<AppUser> _userRepos;

  FutureOr<void> _onEvent(
    ProfileEvent event,
    Emitter<ProfileState> emit,
  ) async {
    await event.when(
      started: () {},
      submitted: (user) async {
        emit(const ProfileState.loading());
        final tmp = await _userRepos.update(user);
        tmp.fold(
          (l) => emit(const ProfileState.failure()),
          (r) => emit(
            ProfileState.loadDataSuccess(aUser: user),
          ),
        );
      },
    );
  }
}
