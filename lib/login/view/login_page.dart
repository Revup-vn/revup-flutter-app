import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:revup/gen/assets.gen.dart';
import 'package:revup/l10n/l10n.dart';

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
            Text(
              l10n.loginPageTitle,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 22,
              ),
            ),
            Text(
              l10n.loginPageLabel,
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontSize: 16,
              ),
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
            RichText(
              text: TextSpan(
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
                children: [
                  TextSpan(
                    text: l10n.acceptPolicyLabel,
                  ),
                  TextSpan(
                    text: l10n.privacyLabel,
                    style: const TextStyle(color: Colors.orange),
                  ),
                  TextSpan(
                    text: l10n.andLabel,
                  ),
                  TextSpan(
                    text: l10n.termLabel,
                    style: const TextStyle(color: Colors.orange),
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
                Text(l10n.loginBySSOLabel),
                const Expanded(
                  child: Divider(),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Material(
                  child: Center(
                    child: Ink(
                      decoration: const ShapeDecoration(
                        shape: CircleBorder(),
                        color: Color(0x1F49454F),
                      ),
                      child: IconButton(
                        icon: const Icon(
                          Icons.facebook,
                          color: Color(0xFF4267B2),
                          size: 32,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 56),
                Material(
                  child: Center(
                    child: Ink(
                      decoration: const ShapeDecoration(
                        shape: CircleBorder(),
                        color: Color(0x1F49454F),
                      ),
                      child: IconButton(
                        icon: Assets.screens.googleOriginal
                            .svg(width: 24, height: 24),
                        onPressed: () {},
                      ),
                    ),
                  ),
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
            const SizedBox(
              width: 8,
            ),
            const FittedBox(
              child: Text('+84'),
            ),
            const SizedBox(
              width: 8,
            )
          ],
        ),
      ),
    );
  }
}
