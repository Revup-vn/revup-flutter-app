import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../login/bloc/login_password_bloc.dart';

class PinCodeFormBuidler extends StatefulWidget {
  const PinCodeFormBuidler(
    this.errorMessageLabel,
    this.phoneNumber, {
    required this.buttonLabel,
    required this.footerLabel,
    required this.hasButton,
    super.key,
  });
  final String phoneNumber;
  final String buttonLabel;
  final String footerLabel;
  final bool hasButton;
  final String errorMessageLabel;
  @override
  State<StatefulWidget> createState() => _PinCodeFormBuidler();
}

class _PinCodeFormBuidler extends State<PinCodeFormBuidler> {
  final formKey = GlobalKey<FormBuilderState>();
  final TextEditingController _textEditingController = TextEditingController();
  bool isDisable = true;
  String currentValue = '';
  @override
  Widget build(BuildContext context) {
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
            pinTheme: PinTheme(
              shape: PinCodeFieldShape.underline,
              inactiveColor: Theme.of(context).colorScheme.onSurfaceVariant,
              selectedColor: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
            cursorColor: Theme.of(context).shadowColor,
            controller: _textEditingController,
            keyboardType: TextInputType.number,
            onCompleted: (v) {
              setState(() {
                isDisable = false;
                currentValue = v;
              });

              FocusScope.of(context).unfocus();
              if (formKey.currentState!.saveAndValidate()) {
                context.read<LoginPasswordBloc>().add(
                      LoginPasswordEvent.submit(
                        phoneNumber: widget.phoneNumber,
                        pinCode: v,
                      ),
                    );
              }
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
          widget.errorMessageLabel,
          style: Theme.of(context)
              .textTheme
              .caption!
              .copyWith(color: Theme.of(context).colorScheme.error),
          maxLines: 1,
        ),
        const SizedBox(
          height: 10,
        ),
        InkWell(
          child: AutoSizeText(
            widget.footerLabel,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.secondary,
                ),
            maxLines: 1,
            textAlign: TextAlign.left,
          ),
          onTap: () {},
        ),
        const SizedBox(
          height: 30,
        ),
        if (widget.hasButton)
          ElevatedButton(
            onPressed: isDisable
                ? null
                : () {
                    FocusScope.of(context).unfocus();
                    if (formKey.currentState!.saveAndValidate()) {
                      context.read<LoginPasswordBloc>().add(
                            LoginPasswordEvent.submit(
                              phoneNumber: widget.phoneNumber,
                              pinCode: currentValue,
                            ),
                          );
                    }
                  },
            style: Theme.of(context)
                .elevatedButtonTheme
                .style!
                .copyWith(alignment: Alignment.center),
            child: AutoSizeText(
              widget.buttonLabel,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(fontWeight: FontWeight.bold),
              maxLines: 1,
            ),
          ),
      ],
    );
  }
}
