import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../../gen/assets.gen.dart';
import '../../l10n/l10n.dart';
import '../bloc/login_bloc.dart';
import 'login_sso_item.dart';

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
            FormBuilder(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  FormBuilderTextField(
                    name: 'phone',
                    decoration: InputDecoration(
                      prefixIcon: Ink(
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
                      ),
                      hintText: l10n.phoneFieldLabel,
                    ),
                    keyboardType: TextInputType.number,
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(
                        errorText: l10n.phoneRequiredErrorLabel,
                      ),
                      FormBuilderValidators.match(
                        r'^0?(3|5|7|8|9){1}([0-9]{8})$',
                        errorText: l10n.invalidPhoneNumberLabel,
                      ),
                    ]),
                    onChanged: (phoneNumber) {
                      final isValid =
                          _formKey.currentState?.validate() ?? false;
                      context.read<LoginBloc>().add(
                            LoginEvent.start(
                              isLoginButtonEnabled: isValid,
                            ),
                          );
                    },
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  BlocBuilder<LoginBloc, LoginState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        initial: (isLoginButtonEnabled) => ElevatedButton(
                          onPressed: isLoginButtonEnabled
                              ? () {
                                  context.read<LoginBloc>().add(
                                        const LoginEvent.submit(),
                                      ); // TODO(cantgim): implement submit
                                }
                              : null,
                          style: Theme.of(context).elevatedButtonTheme.style,
                          child: AutoSizeText(l10n.continueLabel),
                        ),
                        orElse: () => ElevatedButton(
                          onPressed: null,
                          style: Theme.of(context).elevatedButtonTheme.style,
                          child: AutoSizeText(l10n.continueLabel),
                        ),
                      );
                    },
                  ),
                ],
              ),
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
                    // TODO(cantgim): implement regconizer
                  ),
                  TextSpan(
                    text: l10n.andLabel,
                  ),
                  TextSpan(
                    text: l10n.termLabel,
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                    ),
                    // TODO(cantgim): implement regconizer
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
}
