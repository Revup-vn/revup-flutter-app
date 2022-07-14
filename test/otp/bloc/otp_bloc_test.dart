import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:revup/otp/bloc/otp_bloc.dart';

void main() {
  group('LoginBloc', () {
    late OTPBloc otpBloc;

    setUp(() {
      otpBloc = OTPBloc();
    });
    blocTest<OTPBloc, OTPState>(
      'emit initial state when started event is added',
      build: () => otpBloc,
      act: (bloc) => bloc.add(const OTPEvent.started(isTapable: false)),
      expect: () => <OTPState>[const OTPState.initial(isTapable: false)],
    );

    blocTest<OTPBloc, OTPState>(
      'emit successToLogin state when submitToLogin event is added',
      build: () => otpBloc,
      act: (bloc) => bloc.add(
        const OTPEvent.submitToLogin(
          otpCode: '123456',
          phoneNumber: '+84 163999999',
        ),
      ),
      expect: () => <OTPState>[
        const OTPState.successToLogin(
          phoneNumber: '+84 163999999',
          credentials: 'aaa',
        ),
      ],
    );
    blocTest<OTPBloc, OTPState>(
      'emit failure state when submitToLogin event is added',
      build: () => otpBloc,
      act: (bloc) => bloc.add(
        const OTPEvent.submitToLogin(
          otpCode: '999999',
          phoneNumber: '+84 163999999',
        ),
      ),
      expect: () => <OTPState>[
        const OTPState.failure(
          hasError: true,
        ),
      ],
    );
    blocTest<OTPBloc, OTPState>(
      'emit successToSignUp state when submitToSignup event is added',
      build: () => otpBloc,
      act: (bloc) => bloc.add(
        const OTPEvent.submitToSignup(
          otpCode: '123456',
          phoneNumber: '+84 163999999',
        ),
      ),
      expect: () => <OTPState>[
        const OTPState.successToSignup(
          phoneNumber: '+84 163999999',
          credentials: 'aaa',
        ),
      ],
    );
    blocTest<OTPBloc, OTPState>(
      'emit ready state when countDownFinish event is added',
      build: () => otpBloc,
      act: (bloc) => bloc.add(
        const OTPEvent.countDownFinish(
          isTapable: true,
        ),
      ),
      expect: () => <OTPState>[
        const OTPState.ready(
          isTapable: true,
        ),
      ],
    );
    blocTest<OTPBloc, OTPState>(
      'emit initial state when pressResendOTP event is added',
      build: () => otpBloc,
      act: (bloc) => bloc.add(
        const OTPEvent.pressedResendOTP(
          phoneNumber: '+84 163999999',
          isTapable: true,
        ),
      ),
      expect: () => <OTPState>[
        const OTPState.initial(
          phoneNumber: '+84 163999999',
          isTapable: false,
        ),
      ],
    );
  });
}
