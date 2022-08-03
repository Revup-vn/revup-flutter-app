import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';

class SupportHomePageItem extends StatelessWidget {
  const SupportHomePageItem({
    super.key,
    required this.userName,
    required this.icon,
  });
  final String userName;
  final Icon icon;
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
              onPressed: () {
                // TODO(namngoc231): Call rescuer
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
          child: AutoSizeText(
            userName,
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
