import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:revup/login/bloc/login_bloc.dart';

void main() {
  group('LoginBloc', () {
    blocTest<LoginBloc, LoginState>(
      'emit Login Ready state when Login Start event is added',
      build: () => LoginBloc(),
      act: (bloc) =>
          bloc.add(const LoginEvent.start(isLoginButtonEnabled: false)),
      expect: () =>
          <LoginState>[const LoginState.ready(isLoginButtonEnabled: false)],
    );
  });
}
