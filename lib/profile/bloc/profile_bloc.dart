import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:revup_core/core.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc(
    this._userRepos,
    this.consumerID,
  ) : super(const _Initial()) {
    on<ProfileEvent>(_onEvent);
  }
  final IStore<AppUser> _userRepos;
  final String consumerID;
  FutureOr<void> _onEvent(
    ProfileEvent event,
    Emitter<ProfileState> emit,
  ) async {
    await event.when(
      started: () async {
        emit(const ProfileState.loading());

        (await _userRepos.get(consumerID))
            .map(
              (r) => r.maybeMap<Option<AppUser>>(
                orElse: none,
                consumer: some,
              ),
            )
            .fold<Option<AppUser>>((l) => none(), (r) => r)
            .fold(
          () => emit(const ProfileState.failure()),
          (aUser) {
            emit(
              ProfileState.loadDataSuccess(
                aUser: aUser,
              ),
            );
          },
        );
      },
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
