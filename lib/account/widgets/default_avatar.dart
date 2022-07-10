import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class DefaultAvatar extends StatelessWidget {
  const DefaultAvatar({
    super.key,
    required this.avatarSize,
    required this.cameraContainerSize,
    required this.cameraSize,
    this.textSize,
    required this.userName,
  });
  final double avatarSize;
  final double cameraContainerSize;
  final double cameraSize;
  final TextStyle? textSize;
  final String userName;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomRight,
          child: CircleAvatar(
            backgroundColor: Theme.of(context).colorScheme.onPrimary,
            radius: cameraContainerSize,
            child: Icon(
              Icons.camera_alt,
              size: cameraSize,
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
          ),
        ),
        Align(
          child: AutoSizeText(
            userName[0].toUpperCase(),
            style: textSize!
                .copyWith(color: Theme.of(context).colorScheme.onPrimary),
          ),
        ),
      ],
    );
  }
}
