import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:revup_core/core.dart';

part 'account_bloc.freezed.dart';
part 'account_event.dart';
part 'account_state.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  AccountBloc(
    this.providerID,
    this._userRepos,
    this.storeRepository,
    this._imagePicker,
    this.storageBloc,
  ) : super(const _Initial()) {
    on<AccountEvent>(_onEvent);
  }
  final String providerID;
  final IStore<AppUser> _userRepos;
  final StoreRepository storeRepository;
  final ImagePicker _imagePicker;
  final StorageBloc storageBloc;
  FutureOr<void> _onEvent(
    AccountEvent event,
    Emitter<AccountState> emit,
  ) async {
    await event.when(
      started: () async {
        emit(const AccountState.loading());

        (await _userRepos.get(providerID))
            .map(
              (r) => r.maybeMap<Option<AppUser>>(
                orElse: none,
                consumer: some,
              ),
            )
            .fold<Option<AppUser>>((l) => none(), (r) => r)
            .fold(
          () => emit(const AccountState.failure()),
          (aUser) {
            emit(
              AccountState.success(
                aUser: aUser,
                newImgUrl: '',
              ),
            );
          },
        );
      },
      imageUploadSelected: (source) async {
        final pickedImage = await _imagePicker.pickImage(source: source);
        if (pickedImage != null) {
          final _image = File(pickedImage.path);
          (await _userRepos.get(providerID))
              .map(
                (r) => r.maybeMap<Option<AppUser>>(
                  orElse: none,
                  consumer: some,
                ),
              )
              .fold<Option<AppUser>>((l) => none(), (r) => r)
              .fold(
                () => emit(const AccountState.failure()),
                (aUser) async => uploadImg(
                  file: StorageFile.profile(file: _image),
                  emit: emit,
                ),
              );
        }
      },
    );
  }

  Future<Unit> uploadImg({
    required StorageFile file,
    required Emitter<AccountState> emit,
  }) async {
    storageBloc.add(StorageEvent.upload(file: file));
    await _listenWhen(
      (state) async => state.maybeWhen(
        success: (eitherFailuresOrUrls) => eitherFailuresOrUrls.map(
          (a) => a.fold(
            (l) => emit(const AccountState.failure()),
            (newImgUrl) async {
              final tmp = (await _userRepos.get(providerID))
                  .map(
                    (r) => r.maybeMap<Option<AppUser>>(
                      orElse: none,
                      consumer: some,
                    ),
                  )
                  .fold<Option<AppUser>>((l) => none(), (r) => r);
              await tmp.fold(
                () => null,
                (a) => a.maybeMap(
                  consumer: (value) async {
                    final tmp = AppUser.consumer(
                      uuid: value.uuid,
                      firstName: value.firstName,
                      lastName: value.lastName,
                      phone: value.phone,
                      dob: value.dob,
                      addr: value.addr,
                      email: value.email,
                      active: value.active,
                      avatarUrl: newImgUrl,
                      createdTime: value.createdTime,
                      lastUpdatedTime: value.lastUpdatedTime,
                      vac: value.vac,
                    );
                    final newCons =
                        AppUserDummy.dummyConsumer(providerID).maybeMap(
                      orElse: () => throw NullThrownError(),
                      consumer: (value) => value.copyWith(avatarUrl: newImgUrl),
                    );
                    final t = await _userRepos.updateFields(
                      newCons,
                      ilist(
                        [
                          AppUserDummy.field(AppUserFields.AvatarUrl),
                        ],
                      ),
                    );
                    t.fold(
                      (l) => emit(
                        const AccountState.loading(),
                      ),
                      (r) => emit(
                        AccountState.success(
                          aUser: tmp,
                          newImgUrl: newImgUrl,
                        ),
                      ),
                    );
                  },
                  orElse: () => throw NullThrownError(),
                ),
              );
            },
          ),
        ),
        orElse: () => false,
      ),
      emit,
    );

    return unit;
  }

  Future<Unit> _listenWhen(
    Function1<StorageState, void> map,
    Emitter<AccountState> emit,
  ) async {
    await emit.onEach<StorageState>(
      storageBloc.stream,
      onData: map,
    );

    return unit;
  }
}
