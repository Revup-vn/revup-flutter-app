import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pincode_event.dart';
part 'pincode_state.dart';
part 'pincode_bloc.freezed.dart';

class PincodeBloc extends Bloc<PincodeEvent, PincodeState> {
  PincodeBloc() : super(const PincodeState.initial(isEnable: false)) {
    on<Started>((event, emit) {
      emit(
        PincodeState.initial(isEnable: event.isEnable),
      );
    });
    on<PressResendOTP>(
      (event, emit) {
        emit(
          PincodeState.timeComplete(isTapable: event.isTapable),
        );
      },
    );
  }
}
