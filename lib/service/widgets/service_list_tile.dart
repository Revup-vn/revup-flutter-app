import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../gen/assets.gen.dart';
import '../models/service_data.dart';

class ServiceListTile extends StatelessWidget {
  const ServiceListTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
    required this.imageSize,
  });
  final String title;
  final String subtitle;
  final String imageUrl;
  final double imageSize;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SizedBox(
        height: imageSize,
        width: imageSize,
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
            // ignore: implicit_dynamic_parameter
            errorWidget: (context, url, error) {
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
      ),
      title: AutoSizeText(title),
      subtitle: AutoSizeText(subtitle),
    );
  }
}
