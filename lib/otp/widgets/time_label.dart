import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timer_count_down/timer_controller.dart';
import 'package:timer_count_down/timer_count_down.dart';

import '../bloc/otp_bloc.dart';

class CountDownLabel extends StatelessWidget {
  const CountDownLabel(
    this._countdownController, {
    super.key,
    this.onFinished,
  });
  final CountdownController? _countdownController;
  final VoidCallback? onFinished;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AutoSizeText(
          '(',
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.secondary,
              ),
        ),
        Countdown(
          controller: _countdownController,
          seconds: 60,
          build: (_, double time) => AutoSizeText(
            time.toInt().toString(),
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          onFinished: () {
            onFinished ??
                context.read<OTPBloc>().add(
                      const OTPEvent.countDownFinish(
                        isTapable: true,
                      ),
                    );
          },
        ),
        AutoSizeText(
          's)',
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.secondary,
              ),
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
