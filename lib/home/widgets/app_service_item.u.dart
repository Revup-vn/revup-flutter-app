import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class AppServiceItem extends StatelessWidget {
  const AppServiceItem({
    super.key,
    required this.name,
    required this.icon,
    required this.onPressed,
  });
  final String name;
  final Icon icon;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            child: IconButton(
              icon: icon,
              iconSize: 35,
              onPressed: onPressed,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
          child: AutoSizeText(
            name,
            style: Theme.of(context)
                    .textTheme
                    .labelLarge
                    ?.copyWith(fontWeight: FontWeight.bold) ??
                const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
      ],
    );
  }
}
