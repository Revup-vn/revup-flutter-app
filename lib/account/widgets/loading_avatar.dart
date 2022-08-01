import 'package:flutter/material.dart';

import 'package:shimmer/shimmer.dart';

class LoadingAvatar extends StatelessWidget {
  const LoadingAvatar({
    super.key,
    required this.avatarSize,
  });
  // TODO(namngoc231): Use this widget to loading avatar state
  final double avatarSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Shimmer.fromColors(
        baseColor: Colors.grey[300] ?? Colors.grey,
        highlightColor: Colors.grey[100] ?? Colors.grey,
        child: CircleAvatar(
          radius: avatarSize,
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }
}
