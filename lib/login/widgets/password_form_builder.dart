import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'package:revup/l10n/l10n.dart';

class PasswordFormBuidler extends StatefulWidget {
  const PasswordFormBuidler({super.key});
  @override
  State<StatefulWidget> createState() => _PasswordFormBuidler();
}

class _PasswordFormBuidler extends State<PasswordFormBuidler> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController _textEditingController = TextEditingController();
  bool isDisable = true; // true disable button
  bool hasError = false;
  late String buttonLabel = '';
  late String footerLabel = '';
  bool hasButton = true; //true voi man hinh co button

  @override
  Widget build(BuildContext context) {
    buttonLabel = context.l10n.continueLabel;
    footerLabel = context.l10n.showPasswordLabel;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FormBuilder(
          key: formKey,
          child: PinCodeTextField(
            appContext: context,
            length: 6,
            obscureText: true,
            animationType: AnimationType.scale,
            validator: (v) {},
            pinTheme: PinTheme(
              shape: PinCodeFieldShape.underline,
              inactiveColor: const Color.fromRGBO(128, 118, 103, 100),
              selectedColor: const Color.fromRGBO(128, 118, 103, 100),
            ),
            cursorColor: Theme.of(context).shadowColor,
            controller: _textEditingController,
            keyboardType: TextInputType.number,
            onCompleted: (v) {
              setState(() {
                isDisable = false;
              });
            },
            onChanged: (v) {
              if (v.length < 6) {
                setState(() {
                  isDisable = true;
                });
              }
            },
          ),
        ),
        AutoSizeText(
          hasError ? 'show text when error' : '',
          style: Theme.of(context).textTheme.caption,
          maxLines: 1,
        ),
        const SizedBox(
          height: 10,
        ),
        InkWell(
          child: AutoSizeText(
            footerLabel,
            style: Theme.of(context).textTheme.titleMedium,
            maxLines: 1,
            textAlign: TextAlign.left,
          ),
          onTap: () {},
        ),
        const SizedBox(
          height: 30,
        ),
        if (hasButton)
          ElevatedButton(
            onPressed: isDisable ? null : () {},
            style: Theme.of(context).elevatedButtonTheme.style,
            child: AutoSizeText(
              buttonLabel,
              style: Theme.of(context).textTheme.titleMedium,
              maxLines: 1,
            ),
          ),
      ],
    );
  }
}
