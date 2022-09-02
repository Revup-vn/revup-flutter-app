import 'package:flutter/material.dart';

class CountdownText extends StatelessWidget {
  const CountdownText({super.key, required this.duration});
  final int duration;

  @override
  Widget build(BuildContext context) {
    final minutesStr =
        ((duration / 60) % 60).floor().toString().padLeft(2, '0');
    final secondsStr = (duration % 60).toString().padLeft(2, '0');
    return Text(
      '$minutesStr:$secondsStr',
      style: Theme.of(context).textTheme.headline1,
    );
  }
}
