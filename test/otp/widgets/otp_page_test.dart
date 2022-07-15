import 'package:flutter/material.dart';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:revup/l10n/l10n.dart';
import 'package:revup/otp/bloc/otp_bloc.dart';
import 'package:revup/otp/enum/otp_enums.dart';
import 'package:revup/otp/view/otp_page.u.dart';
import 'package:revup/otp/widgets/otp_main_content.dart';
import 'package:revup/otp/widgets/otp_pincode_main_content.dart';
import 'package:revup/otp/widgets/time_label.dart';

class MockOTPBloc extends MockBloc<OTPEvent, OTPState> implements OTPBloc {}

void main() {
  String? fromRichTextToPlainText(final Widget widget) {
    if (widget is RichText) {
      if (widget.text is TextSpan) {
        final buffer = StringBuffer();
        (widget.text as TextSpan).computeToPlainText(buffer);
        return buffer.toString();
      }
    }
    return null;
  }

  group('OTP page', () {
    testWidgets(
      'renders OTP page',
      (WidgetTester tester) async {
        await tester.pumpWidget(
          const MaterialApp(
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            home: OTPPage('+84 163999999', OTPType.login),
          ),
        );
        expect(find.byType(OTPPage), findsOneWidget);
        expect(find.byType(OTPMainContent), findsOneWidget);
        expect(find.byType(PincodeMainContent), findsOneWidget);
        expect(find.byType(CountDownLabel), findsOneWidget);
      },
    );
  });
  group('OTP widget', () {
    late OTPBloc otpBloc;
    //late CountdownController _countdownController;
    setUp(() {
      otpBloc = MockOTPBloc();
      //_countdownController = CountdownController(autoStart: true);
    });
    testWidgets(
      'renders title and subtitle',
      (WidgetTester tester) async {
        when(() => otpBloc.state).thenReturn(
          const OTPState.initial(isTapable: false),
        );

        await tester.pumpWidget(
          BlocProvider<OTPBloc>(
            create: (context) => otpBloc,
            child: const MaterialApp(
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              locale: Locale('vi'),
              supportedLocales: AppLocalizations.supportedLocales,
              home: OTPPage('+84 163999999', OTPType.login),
            ),
          ),
        );

        expect(find.text('Nhập mã OTP'), findsOneWidget);
        expect(find.text('Gửi lại mã OTP'), findsOneWidget);
        expect(
          find.byWidgetPredicate(
            (widget) =>
                fromRichTextToPlainText(widget) ==
                'Mã OTP sẽ được gửi đến số : +84 163999999',
          ),
          findsOneWidget,
        );
      },
    );
    // testWidgets(
    //   'add event sumbitToLogin to OTPBloc when pincode full fill',
    //   (WidgetTester tester) async {
    //     when(() => otpBloc.state)
    //         .thenReturn(const OTPState.initial(isTapable: false));

    //     await tester.pumpWidget(
    //       BlocProvider<OTPBloc>(
    //         create: (context) => otpBloc,
    //         child: const MaterialApp(
    //           localizationsDelegates:
    // AppLocalizations.localizationsDelegates,
    //           locale: Locale('vi'),
    //           supportedLocales: AppLocalizations.supportedLocales,
    //           home: OTPView('+84 163999999', OTPType.login),
    //         ),
    //       ),
    //     );
    //     final pinField = find.descendant(
    //       of: find.byType(PinCodeTextField),
    //       matching: find.byType(AnimatedContainer),
    //     );
    //     await tester.tap(pinField.first);
    //     await tester.pump();

    //     await tester.enterText(find.byType(TextFormField).first, '3');
    //     await tester.pump();
    //     expect(find.text('3'), findsWidgets);

    //     await tester.pump(const Duration(seconds: 2));

    //     await tester.enterText(find.byType(TextFormField).first, '4');
    //     await tester.pump();
    //     expect(find.text('3'), findsWidgets);
    //     expect(find.text('4'), findsWidgets);

    //     // expect(
    //     //   find.byWidgetPredicate(
    //     //     (widget) =>
    //     //         widget is PinCodeTextField &&
    //     //         widget.key == const Key('pincodeTextField') &&
    //     //         widget.controller?.text.length == 6,
    //     //     description: 'Switch is enabled',
    //     //   ),
    //     //   findsOneWidget,
    //     // );
    //   },
    // );

    testWidgets(
      'add events pressResendOTP to OTPBloc when resent OTP is pressed',
      (WidgetTester tester) async {
        when(() => otpBloc.state).thenReturn(
          const OTPState.ready(isTapable: true),
        );

        await tester.pumpWidget(
          BlocProvider<OTPBloc>(
            create: (context) => otpBloc,
            child: const MaterialApp(
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              locale: Locale('vi'),
              supportedLocales: AppLocalizations.supportedLocales,
              home: OTPMainContent('+84 163999999', OTPType.login),
            ),
          ),
        );

        await tester.tap(find.byType(InkWell));
        await tester.pump();
        verify(
          () => otpBloc.add(
            const OTPEvent.pressedResendOTP(
              isTapable: false,
              phoneNumber: '+84 163999999',
            ),
          ),
        ).called(1);
      },
    );
    testWidgets(
      'inwell is disable when isTapable is false',
      (WidgetTester tester) async {
        when(() => otpBloc.state).thenReturn(
          const OTPState.initial(isTapable: false),
        );

        await tester.pumpWidget(
          BlocProvider<OTPBloc>(
            create: (context) => otpBloc,
            child: const MaterialApp(
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              locale: Locale('vi'),
              supportedLocales: AppLocalizations.supportedLocales,
              home: OTPPage('+84 163999999', OTPType.login),
            ),
          ),
        );

        await tester.tap(find.byType(InkWell));
        await tester.pump();
        verifyNever(
          () => otpBloc.add(
            const OTPEvent.pressedResendOTP(
              isTapable: false,
              phoneNumber: '+84 163999999',
            ),
          ),
        ).called(0);
      },
    );

    testWidgets(
      'has error when state failure is set',
      (WidgetTester tester) async {
        when(() => otpBloc.state).thenReturn(
          const OTPState.failure(hasError: true),
        );

        await tester.pumpWidget(
          BlocProvider<OTPBloc>(
            create: (context) => otpBloc,
            child: const MaterialApp(
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              locale: Locale('vi'),
              supportedLocales: AppLocalizations.supportedLocales,
              home: OTPMainContent('+84 163999999', OTPType.login),
            ),
          ),
        );

        expect(
          find.text('Mã OTP không đúng, vui lòng nhập lại!'),
          findsOneWidget,
        );
      },
    );
    // testWidgets('onPressed is called when count down finish',
    //(tester) async {
    //   var called = 0;
    //   void handler() {
    //     called++;
    //   }

    //   await tester.pumpWidget(
    //     MaterialApp(
    //       localizationsDelegates: AppLocalizations.localizationsDelegates,
    //       supportedLocales: AppLocalizations.supportedLocales,
    //       home: Scaffold(
    //         body: CountDownLabel(
    //           _countdownController,
    //           onFinished: handler,
    //         ),
    //       ),
    //     ),
    //   );

    //   await tester.runAsync<void>(() async {
    //     await Future.delayed(const Duration(seconds: 70), () {});
    //   });
    //   expect(called, 1);
    // });
  });
}
