import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:revup/login/view/login_sso_item.dart';
import '../../gen/assets.gen.dart';
import '../../l10n/l10n.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
            FormBuilderTextField(
              name: 'phone',
              decoration: InputDecoration(
                prefixIcon: _buildFlagLabel(),
                hintText: l10n.phoneFieldLabel,
              ),
              keyboardType: TextInputType.number,
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
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => print('Tap Here'),
                  ),
                  TextSpan(
                    text: l10n.andLabel,
                  ),
                  TextSpan(
                    text: l10n.termLabel,
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => print('Tap Here'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(l10n.continueButtonLabel),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 132),
            Row(
              children: [
                const Expanded(
                  child: Divider(),
                ),
                AutoSizeText(l10n.loginBySSOLabel),
                const Expanded(
                  child: Divider(),
                ),
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
            const FittedBox(child: Text('+84')),
            const SizedBox(width: 8)
          ],
        ),
      ),
    );
  }
}
