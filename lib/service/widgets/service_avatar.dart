import 'package:flutter/material.dart';

import 'package:cached_network_image/cached_network_image.dart';

import '../../gen/assets.gen.dart';

class ServiceAvatar extends StatelessWidget {
  const ServiceAvatar({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: 48,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(48),
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          placeholder: (context, url) => Assets.screens.dfAvatar.image(
            fit: BoxFit.cover,
            height: 64,
            gaplessPlayback: true,
            width: 64,
          ),
          errorWidget: (context, url, dynamic error) {
            return Assets.screens.dfAvatar.image(
              fit: BoxFit.cover,
              height: 64,
              gaplessPlayback: true,
              width: 64,
            );
          },
          height: 64,
          width: 64,
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
