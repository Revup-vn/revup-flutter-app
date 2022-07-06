import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CircleAvatarAccount extends StatelessWidget {
  const CircleAvatarAccount({
    super.key,
    required this.radiusCircleAvatar,
    required this.radiusCircleAvatarIcon,
    required this.sizeIcon,
    required this.sizeText,
  });
  final double radiusCircleAvatar;
  final double radiusCircleAvatarIcon;
  final double sizeIcon;
  final TextStyle? sizeText;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radiusCircleAvatar,
      backgroundColor: Theme.of(context).colorScheme.primary,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: CircleAvatar(
              backgroundColor: Theme.of(context).colorScheme.onPrimary,
              radius: radiusCircleAvatarIcon,
              child: Icon(
                Icons.camera_alt,
                size: sizeIcon,
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),
          ),
          Align(
            child: AutoSizeText(
              'N',
              // style: Theme.of(context)
              //     .textTheme
              //     .displayLarge!
              //     .copyWith(color: Theme.of(context).colorScheme.onPrimary),
              style: sizeText!
                  .copyWith(color: Theme.of(context).colorScheme.onPrimary),
            ),
          ),
        ],
      ),
    );
  }
}
