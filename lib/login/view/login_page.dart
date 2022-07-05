import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../bloc/login_bloc.dart';
import '../../gen/assets.gen.dart';
import '../../l10n/l10n.dart';
import 'login_sso_item.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: LoginView(),
    );
  }
}

class LoginView extends StatelessWidget {
  LoginView({super.key});

  final _formKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 56, 16, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 350,
              child: Assets.screens.logoTrans.svg(),
            ),
            AutoSizeText(
              l10n.loginPageTitle,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            AutoSizeText(
              l10n.loginPageLabel,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 32),
            BlocBuilder<LoginBloc, LoginState>(
              buildWhen: (previous, current) =>
                  previous.phoneNumber != current.phoneNumber,
              builder: (context, state) {
                return FormBuilder(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      FormBuilderTextField(
                        name: 'phone',
                        decoration: InputDecoration(
                          prefixIcon: _buildFlagLabel(),
                          hintText: l10n.phoneFieldLabel,
                        ),
                        keyboardType: TextInputType.number,
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(
                            errorText: '',
                          ),
                          FormBuilderValidators.maxLength(12),
                          FormBuilderValidators.match(
                            r'(((\+|)84)|0)?(3|5|7|8|9)+([0-9]{8})\b',
                            errorText: '',
                          ),
                        ]),
                        onChanged: (phoneNumber) {
                          if (_formKey.currentState?.validate() ?? false) {
                            context.read<LoginBloc>().add(
                                  LoginEvent.phoneNumberChangedIsValid(
                                    phoneNumber ?? '',
                                  ),
                                );
                          } else {
                            context.read<LoginBloc>().add(
                                  const LoginEvent
                                      .phoneNumberChangedIsInvalid(),
                                );
                          }
                        },
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      ElevatedButton(
                        onPressed: state.isLoginButtonEnabled
                            ? () {
                                context.read<LoginBloc>().add(
                                      const LoginEvent
                                          .signInWithPhoneNumberPressed(),
                                    );
                              }
                            : null,
                        style: Theme.of(context).elevatedButtonTheme.style,
                        child: AutoSizeText(l10n.continueLabel),
                      ),
                    ],
                  ),
                );
              },
            ),
            const SizedBox(height: 90),
            AutoSizeText.rich(
              TextSpan(
                style: Theme.of(context).textTheme.caption,
                children: [
                  TextSpan(
                    text: l10n.acceptPolicyLabel,
                  ),
                  TextSpan(
                    text: l10n.privacyLabel,
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                    ),
                    //recognizer: TapGestureRecognizer()..onTap = () => ,
                  ),
                  TextSpan(
                    text: l10n.andLabel,
                  ),
                  TextSpan(
                    text: l10n.termLabel,
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                    ),
                    //recognizer: TapGestureRecognizer()..onTap = () => ,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 132),
            Row(
              children: [
                const Expanded(child: Divider()),
                AutoSizeText(l10n.loginBySSOLabel),
                const Expanded(child: Divider()),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LoginSsoItem(
                  ssoIcon: Assets.screens.facebookOriginal.svg(),
                ),
                const SizedBox(width: 56),
                LoginSsoItem(
                  ssoIcon: Assets.screens.googleOriginal.svg(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Ink _buildFlagLabel() {
    return Ink(
      child: Padding(
        padding: EdgeInsets.zero,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Assets.screens.flagVietNam.svg(),
            const SizedBox(width: 8),
            const FittedBox(
              child: AutoSizeText('+84'),
            ),
            const SizedBox(width: 8),
          ],
        ),
      ),
    );
  }
}
