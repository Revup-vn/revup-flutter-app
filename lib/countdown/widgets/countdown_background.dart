import 'package:flutter/material.dart';

class CountdownBackground extends StatelessWidget {
  const CountdownBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Theme.of(context).colorScheme.primary.withOpacity(.7),
              Theme.of(context).colorScheme.secondary.withOpacity(.5),
            ],
          ),
        ),
      ),
    );
  }
}
