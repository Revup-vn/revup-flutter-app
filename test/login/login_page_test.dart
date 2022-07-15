import 'package:flutter/material.dart';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:revup/l10n/l10n.dart';
import 'package:revup/login/bloc/login_bloc.dart';
import 'package:revup/login/login.dart';
import 'package:revup/login/view/login_sso_item.dart';
import 'package:revup/login/view/login_view.dart';

class MockLoginBloc extends MockBloc<LoginEvent, LoginState>
    implements LoginBloc {}

void main() {
  group('LoginPage', () {
    testWidgets(
      'renders LoginView',
      (WidgetTester tester) async {
        await tester.pumpWidget(
          const MaterialApp(
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            home: LoginPage(),
          ),
        );
        expect(find.byType(LoginView), findsOneWidget);
      },
    );
  });

  group(
    'LoginView',
    () {
      late LoginBloc loginBloc;

      setUp(() {
        loginBloc = MockLoginBloc();
      });

      testWidgets(
        'renders logo, icons, title and subtitle',
        (WidgetTester tester) async {
          when(() => loginBloc.state).thenReturn(
            const LoginState.initial(isLoginButtonEnabled: false),
          );

          await tester.pumpWidget(
            BlocProvider<LoginBloc>(
              create: (context) => loginBloc,
              child: MaterialApp(
                localizationsDelegates: AppLocalizations.localizationsDelegates,
                locale: const Locale('vi'),
                supportedLocales: AppLocalizations.supportedLocales,
                home: LoginView(),
              ),
            ),
          );

          expect(find.byType(SvgPicture), findsNWidgets(4));
          expect(find.text('Chào mừng bạn đến với revup!'), findsOneWidget);
          expect(
            find.text('Đăng nhập / Đăng ký tài khoản revup ngay bây giờ'),
            findsOneWidget,
          );
        },
      );

      testWidgets(
        'add events Start to LoginBloc when phone updated',
        (WidgetTester tester) async {
          when(() => loginBloc.state).thenReturn(
            const LoginState.initial(isLoginButtonEnabled: false),
          );

          await tester.pumpWidget(
            BlocProvider<LoginBloc>(
              create: (context) => loginBloc,
              child: MaterialApp(
                localizationsDelegates: AppLocalizations.localizationsDelegates,
                locale: const Locale('vi'),
                supportedLocales: AppLocalizations.supportedLocales,
                home: LoginView(),
              ),
            ),
          );

          await tester.enterText(
            find.byType(FormBuilderTextField),
            '0982888999',
          );
          verify(
            () => loginBloc
                .add(const LoginEvent.start(isLoginButtonEnabled: true)),
          ).called(1);
        },
      );

      testWidgets(
        'add events Submit to LoginBloc when phone updated',
        (WidgetTester tester) async {
          when(() => loginBloc.state)
              .thenReturn(const LoginState.initial(isLoginButtonEnabled: true));

          await tester.pumpWidget(
            BlocProvider<LoginBloc>(
              create: (context) => loginBloc,
              child: MaterialApp(
                localizationsDelegates: AppLocalizations.localizationsDelegates,
                locale: const Locale('vi'),
                supportedLocales: AppLocalizations.supportedLocales,
                home: LoginView(),
              ),
            ),
          );

          await tester.tap(find.byType(ElevatedButton));
          verify(
            () => loginBloc.add(const LoginEvent.submit(phoneNumber: '12345')),
          ).called(1);
        },
      );

      testWidgets('continue button is enabled when status is validated',
          (tester) async {
        when(() => loginBloc.state).thenReturn(
          const LoginState.ready(isLoginButtonEnabled: true),
        );
        await tester.pumpWidget(
          BlocProvider<LoginBloc>(
            create: (context) => loginBloc,
            child: MaterialApp(
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              locale: const Locale('vi'),
              supportedLocales: AppLocalizations.supportedLocales,
              home: LoginView(),
            ),
          ),
        );

        final button =
            tester.widget<ElevatedButton>(find.byType(ElevatedButton));
        expect(button.enabled, isTrue);
      });

      testWidgets('continue button is disabled when status is invalidated',
          (tester) async {
        when(() => loginBloc.state).thenReturn(
          const LoginState.loading(),
        );
        await tester.pumpWidget(
          BlocProvider<LoginBloc>(
            create: (context) => loginBloc,
            child: MaterialApp(
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              locale: const Locale('vi'),
              supportedLocales: AppLocalizations.supportedLocales,
              home: LoginView(),
            ),
          ),
        );

        final button =
            tester.widget<ElevatedButton>(find.byType(ElevatedButton));
        expect(button.enabled, isFalse);
      });

      testWidgets('onPressed is called when tap on sso item', (tester) async {
        var called = 0;
        void handler() {
          called++;
        }

        await tester.pumpWidget(
          MaterialApp(
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            home: LoginSsoItem(
              onPressed: handler,
            ),
          ),
        );

        await tester.tap(find.byType(IconButton));
        expect(called, 1);
      });
    },
  );
}
