import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';

import 'package:revup/l10n/l10n.dart';
import 'package:revup/login/widgets/password_form_builder.dart';

class PinCodePasswordVerification extends StatefulWidget {
  const PinCodePasswordVerification(this.phoneNumber, {super.key});
  final String phoneNumber;
  @override
  State<StatefulWidget> createState() => _PinCodePasswordVerification();
}

class _PinCodePasswordVerification extends State<PinCodePasswordVerification> {
  bool isSigup = false; // sigup 2
  bool isChangePassword = false; //changepwd1
  bool isOTP = false; //login 7, sigup 1,
  bool isEnterPass = false; //login 6
  bool isConfirmPass = true; //sigup 5, changepwd3, login9
  bool hasDescriptionLabel = false; //true khong hien so dien thoai
  String currentText = '';
  late String headLineLabel = '';
  late String bodyLabel = '';
  late String footerLabel = '';

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    headLineLabel = l10n.enterNewPassWordForgotLabel;
    bodyLabel = '';
    return SafeArea(
      child: SizedBox(
        child: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 30,
              ),
              IconButton(
                alignment: const Alignment(-4, 0),
                icon: const Icon(
                  Icons.arrow_back,
                ),
                onPressed: () {},
              ),
              const SizedBox(
                height: 10,
              ),
              AutoSizeText(
                headLineLabel,
                style: Theme.of(context).textTheme.headlineSmall,
                maxLines: 1,
                textAlign: TextAlign.left,
              ),
              RichText(
                text: TextSpan(
                  text: bodyLabel,
                  children: [
                    TextSpan(
                      text: hasDescriptionLabel ? widget.phoneNumber : '',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                textAlign: TextAlign.left,
              ),
              const SizedBox(
                height: 20,
              ),
              const PasswordFormBuidler(),
            ],
          ),
        ),
      ),
    );
  }
}
