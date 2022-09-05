import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'otp_cubit.freezed.dart';
part 'otp_state.dart';

class OtpCubit extends Cubit<OtpState> {
  OtpCubit() : super(const OtpState.initial());

  Future<Unit> onStarted(String otp, Completer<String> data) async {
    emit(const OtpState.loading());
    data.complete(otp);
    emit(const OtpState.success());
    return unit;
  }
}
