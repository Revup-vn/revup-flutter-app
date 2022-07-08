import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';

import 'pincode_form_builder.dart';

class PinCode extends StatefulWidget {
  const PinCode(
    this.errorMessageLabel, {
    required this.phoneNumber,
    required this.bodyLabel,
    required this.headLineLabel,
    required this.footerLabel,
    required this.buttonLabel,
    required this.hasButton,
    super.key,
  });
  final String phoneNumber;
  final bool hasButton;
  final String headLineLabel;
  final String bodyLabel;
  final String footerLabel;
  final String buttonLabel;
  final String errorMessageLabel;
  @override
  State<StatefulWidget> createState() => _PinCode();
}

class _PinCode extends State<PinCode> {
  String currentText = '';

  @override
  Widget build(BuildContext context) {
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
                widget.headLineLabel,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(fontWeight: FontWeight.bold),
                maxLines: 1,
                textAlign: TextAlign.left,
              ),
              RichText(
                text: TextSpan(
                  text: widget.bodyLabel,
                  children: [
                    TextSpan(
                      text: widget.phoneNumber != '' ? widget.phoneNumber : '',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ],
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                textAlign: TextAlign.left,
              ),
              const SizedBox(
                height: 20,
              ),
              PinCodeFormBuidler(
                hasButton: widget.hasButton,
                buttonLabel: widget.buttonLabel,
                footerLabel: widget.footerLabel,
                widget.errorMessageLabel,
                widget.phoneNumber,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
