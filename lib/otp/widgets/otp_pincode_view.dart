import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:timer_count_down/timer_controller.dart';

import '../../l10n/l10n.dart';
import '../bloc/otp_bloc.dart';
import '../enum/otp_enums.dart';
import 'time_label.dart';

class PincodeMainContent extends StatelessWidget {
  PincodeMainContent(this.phoneNumber, this.type, {super.key});
  final String phoneNumber;
  final OTPType type;
  final CountdownController _countdownController =
      CountdownController(autoStart: true);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PinCodeTextField(
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
          keyboardType: TextInputType.number,
          onCompleted: (v) {
            type == OTPType.login
                ? context.read<OTPBloc>().add(
                      OTPEvent.submitToLogin(
                        phoneNumber: phoneNumber,
                        otpCode: v,
                      ),
                    )
                : context.read<OTPBloc>().add(
                      OTPEvent.submitToSignup(
                        phoneNumber: phoneNumber,
                        otpCode: v,
                      ),
                    );
          },
          onChanged: (v) {},
        ),
        BlocSelector<OTPBloc, OTPState, bool>(
          selector: (state) => state.maybeMap(
            failure: (value) => value.hasError,
            orElse: () => false,
          ),
          builder: (context, state) {
            return AutoSizeText(
              state ? context.l10n.invalidOTPLabel : '',
              style: Theme.of(context)
                  .textTheme
                  .caption!
                  .copyWith(color: Theme.of(context).colorScheme.error),
              maxLines: 1,
            );
          },
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            BlocSelector<OTPBloc, OTPState, bool>(
              selector: (state) => state.maybeMap(
                ready: (value) => value.isTapable,
                orElse: () => false,
              ),
              builder: (context, state) {
                return InkWell(
                  onTap: state
                      ? () {
                          _countdownController.restart();
                          context.read<OTPBloc>().add(
                                OTPEvent.pressedResendOTP(
                                  isTapable: false,
                                  phoneNumber: phoneNumber,
                                ),
                              );
                        }
                      : null,
                  child: AutoSizeText.rich(
                    TextSpan(
                      text: context.l10n.resendOTPLabel,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                    ),
                    maxLines: 1,
                  ),
                );
              },
            ),
            const SizedBox(
              width: 10,
            ),
            CountDownLabel(_countdownController),
          ],
        ),
      ],
    );
  }
}
