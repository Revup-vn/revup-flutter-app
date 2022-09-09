import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../account/widgets/default_avatar.dart';
import '../../gen/assets.gen.dart';

class ServiceAvatar extends StatelessWidget {
  const ServiceAvatar(
      {super.key, required this.imageUrl, required this.userName});
  final String imageUrl;
  final String userName;

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
            fit: BoxFit.fill,
            height: 64,
            gaplessPlayback: true,
            width: 64,
          ),
          errorWidget: (context, url, dynamic error) {
            return DefaultAvatar(
              textSize: Theme.of(context).textTheme.headline1,
              userName: userName,
            );
          },
          height: 64,
          width: 64,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
