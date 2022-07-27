import 'dart:async';

import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';

import '../../l10n/l10n.dart';
import 'otp_pincode_main_content.u.dart';

class OTPMainContent extends StatelessWidget {
  const OTPMainContent(this.phoneNumber, this.completer, {super.key});
  final Completer completer;
  final String phoneNumber;
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 10,
              ),
              AutoSizeText(
                l10n.enterOTPCodeLabel,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(fontWeight: FontWeight.bold),
                maxLines: 1,
              ),
              RichText(
                text: TextSpan(
                  text: l10n.sendOTPCodeToLabel,
                  children: [
                    TextSpan(
                      text: '+84 0$phoneNumber',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ],
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              PincodeOTP(phoneNumber, completer),
            ],
          ),
        ),
      ),
    );
  }
}
