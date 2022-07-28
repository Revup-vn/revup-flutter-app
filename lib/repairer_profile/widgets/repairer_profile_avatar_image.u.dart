import 'package:flutter/material.dart';

import 'package:cached_network_image/cached_network_image.dart';

class RepairerProfileAvatarImage extends StatelessWidget {
  const RepairerProfileAvatarImage(this.imageUrl, {super.key});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 124,
          height: 124,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(68),
            color: Theme.of(context).colorScheme.surface,
            border: Border.all(
              width: 2,
              color: Theme.of(context).colorScheme.surface,
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(68),
            child: CircleAvatar(
              child: CachedNetworkImage(
                colorBlendMode: BlendMode.modulate,
                imageUrl: imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
