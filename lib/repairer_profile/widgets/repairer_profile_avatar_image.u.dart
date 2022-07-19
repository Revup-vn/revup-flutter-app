import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class RepairerProfileAvatarImage extends StatelessWidget {
  const RepairerProfileAvatarImage({super.key});

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
                imageUrl:
                    'https://i.pinimg.com/564x/6d/ba/ee/6dbaee5de0f568b75e0bc7a8fa1576b1.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
