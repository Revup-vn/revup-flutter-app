import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_profile_state.dart';
part 'update_profile_cubit.freezed.dart';

class UpdateProfileCubit extends Cubit<UpdateProfileState> {
  UpdateProfileCubit() : super(const UpdateProfileState.initial());
  Future<void> updateProfile(
    String fullName,
    String email,
    String phone,
    String date,
    String address,
  ) async {
    emit(const Loading());
    await Future.delayed(const Duration(seconds: 1), () {});
    emit(
      Loaded(
        fullName: fullName,
        email: email,
        phone: phone,
        date: date,
        address: address,
      ),
    );
  }

  Future<void> dataProfile(
    String fullName,
    String email,
    String phone,
    String date,
    String address,
  ) async {
    emit(const Loading());
    await Future.delayed(const Duration(seconds: 1), () {});
    emit(
      Loaded(
        fullName: fullName,
        email: email,
        phone: phone,
        date: date,
        address: address,
      ),
    );
  }
}
