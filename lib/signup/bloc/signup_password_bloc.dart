import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_password_event.dart';
part 'signup_password_state.dart';
part 'signup_password_bloc.freezed.dart';

class SignupPasswordBloc
    extends Bloc<SignupPasswordEvent, SignupPasswordState> {
  SignupPasswordBloc(this.phoneNumber, this.accessToken)
      : super(const _Initial()) {
    on<SignupPasswordEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
  final String phoneNumber;
  final String accessToken;
}
