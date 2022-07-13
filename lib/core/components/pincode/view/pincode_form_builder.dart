import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:timer_count_down/timer_controller.dart';

import '../../../../l10n/l10n.dart';
import '../bloc/pincode_bloc.dart';
import '../pincode_enums.dart';
import '../widgets/time_label.dart';

class PinCodeFormBuidler extends StatefulWidget {
  const PinCodeFormBuidler(
    this.type,
    this.onPress,
    this.onSubmit,
    this.listLabelByPincodeType,
    this.errorMessage, {
    super.key,
  });
  final Map<String, String> listLabelByPincodeType;
  final PinCodeType type;
  final Function(BuildContext, String, String) onSubmit;
  final Function(PinCodeType, BuildContext, String) onPress;
  final String errorMessage;

  @override
  State<PinCodeFormBuidler> createState() => _PinCodeFormBuidlerState();
}

class _PinCodeFormBuidlerState extends State<PinCodeFormBuidler> {
  final formKey = GlobalKey<FormBuilderState>();

  final TextEditingController _textEditingController = TextEditingController();

  final CountdownController _countdownController =
      CountdownController(autoStart: true);
  bool showPassword = false;
  String currentValue = '';
  @override
  void dispose() {
    // _countdownController = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PinCodeTextField(
          appContext: context,
          length: 6,
          obscureText: !showPassword,
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
            currentValue = v;
            if (widget.type == PinCodeType.enterNewPassword ||
                widget.type == PinCodeType.reenterNewPassword ||
                widget.type == PinCodeType.signup) {
            } else {
              widget.onSubmit(
                context,
                widget.listLabelByPincodeType['phoneNumber'] ?? '',
                v,
              );
            }
          },
          onChanged: (v) {
            final isValid = v.length == 6;
            context.read<PincodeBloc>().add(
                  PincodeEvent.started(
                    isEnable: isValid,
                  ),
                );
          },
        ),
        AutoSizeText(
          widget.errorMessage,
          style: Theme.of(context)
              .textTheme
              .caption!
              .copyWith(color: Theme.of(context).colorScheme.error),
          maxLines: 1,
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            if (widget.type == PinCodeType.otp)
              BlocSelector<PincodeBloc, PincodeState, bool>(
                selector: (state) => state.maybeMap(
                  timeComplete: (value) => value.isTapable,
                  orElse: () => false,
                ),
                builder: (context, state) {
                  return InkWell(
                    onTap: state
                        ? () {
                            widget.onPress(
                              widget.type,
                              context,
                              widget.listLabelByPincodeType['phoneNumber'] ??
                                  '',
                            );
                            _countdownController.restart();
                            context.read<PincodeBloc>().add(
                                  const PincodeEvent.pressedResendOTP(
                                    isTapable: false,
                                  ),
                                );
                          }
                        : null,
                    child: AutoSizeText.rich(
                      TextSpan(
                        text:
                            widget.listLabelByPincodeType['footerLabel'] ?? '',
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                      ),
                      maxLines: 1,
                    ),
                  );
                },
              ),
            if (widget.type != PinCodeType.otp)
              InkWell(
                onTap: () {
                  if (widget.type == PinCodeType.enterNewPasswordSignUp ||
                      widget.type == PinCodeType.reenterNewPassword ||
                      widget.type == PinCodeType.changePassword ||
                      widget.type == PinCodeType.enterNewPassword) {
                    setState(() {
                      showPassword = !showPassword;
                      showPassword
                          ? widget.listLabelByPincodeType['footerLabel'] =
                              context.l10n.hidePasswordLabel
                          : widget.listLabelByPincodeType['footerLabel'] =
                              context.l10n.showPasswordLabel;
                    });
                  } else {
                    widget.onPress(
                      widget.type,
                      context,
                      widget.listLabelByPincodeType['phoneNumber'] ?? '',
                    );
                  }
                },
                child: AutoSizeText.rich(
                  TextSpan(
                    text: widget.listLabelByPincodeType['footerLabel'] ?? '',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                  ),
                  maxLines: 1,
                ),
              ),
            const SizedBox(
              width: 10,
            ),
            if (widget.type == PinCodeType.otp)
              CountDownLabel(_countdownController),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        if (widget.type == PinCodeType.enterNewPassword ||
            widget.type == PinCodeType.reenterNewPassword ||
            widget.type == PinCodeType.signup)
          BlocSelector<PincodeBloc, PincodeState, bool>(
            selector: (isEnable) => isEnable.maybeMap(
              initial: (value) => value.isEnable,
              ready: (value) => value.isEnable,
              orElse: () => false,
            ),
            builder: (context, isEnable) {
              return Align(
                child: ElevatedButton(
                  onPressed: isEnable
                      ? () {
                          widget.onSubmit(
                            context,
                            widget.listLabelByPincodeType['phoneNumber'] ?? '',
                            currentValue,
                          );
                        }
                      : null,
                  style: Theme.of(context).elevatedButtonTheme.style,
                  child: AutoSizeText(
                    context.l10n.continueLabel,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(fontWeight: FontWeight.bold),
                    maxLines: 1,
                  ),
                ),
              );
            },
          ),
      ],
    );
  }
}
