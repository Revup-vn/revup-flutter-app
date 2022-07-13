import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';

import '../pincode_enums.dart';
import 'pincode_form_builder.dart';

class PinCodePage extends StatelessWidget {
  const PinCodePage(
    this.type,
    this.onSubmit,
    this.onPress,
    this.errorMessage, {
    required this.listLabelByPincodeType,
    super.key,
  });
  final String errorMessage;
  final PinCodeType type;
  final Function(BuildContext, String, String) onSubmit;
  final Function(PinCodeType, BuildContext, String) onPress;
  final Map<String, String> listLabelByPincodeType;

  @override
  Widget build(BuildContext context) {
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
                listLabelByPincodeType['headLineLabel'] ?? '',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(fontWeight: FontWeight.bold),
                maxLines: 1,
              ),
              RichText(
                text: TextSpan(
                  text: listLabelByPincodeType['bodyLabel'] ?? '',
                  children: [
                    TextSpan(
                      text:
                          (type == PinCodeType.login || type == PinCodeType.otp)
                              ? listLabelByPincodeType['phoneNumber'] ?? ''
                              : '',
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
              PinCodeFormBuidler(
                type,
                onPress,
                onSubmit,
                listLabelByPincodeType,
                errorMessage,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
