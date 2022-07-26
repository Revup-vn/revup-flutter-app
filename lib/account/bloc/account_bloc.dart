import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../model/user_model.dart';

part 'account_bloc.freezed.dart';
part 'account_event.dart';
part 'account_state.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  AccountBloc() : super(const _Initial()) {
    on<_Started>(_onStarted);
  }

  Future<void> _onStarted(
    _Started event,
    Emitter<AccountState> emit,
  ) async {
    await event.when(
      started: () async {
        emit(const AccountState.loading());
        final user = UserModel(
          name: 'Nam Anh',
          email: 'namanh231@gmail.com',
          phone: '0893876555',
          date: DateTime.utc(1989, 12, 9),
          address: 'Yen Khanh, Ninh Binh',
          urlImage:
              'https://cdn.pixabay.com/photo/2017/09/27/15/52/man-2792456_1280s.jpg',
        );
        emit(AccountState.success(user));
      },
    );
  }
}
