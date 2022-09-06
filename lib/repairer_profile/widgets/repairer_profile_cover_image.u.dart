import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../gen/assets.gen.dart';

class RepairerProfileCoverImage extends StatelessWidget {
  const RepairerProfileCoverImage(
    this.coverHeight,
    this.backgroundImg, {
    super.key,
  });
  final double coverHeight;
  final String backgroundImg;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: CachedNetworkImage(
        fit: BoxFit.cover,
        width: double.infinity,
        height: coverHeight,
        imageUrl: backgroundImg,
        errorWidget: (context, url, dynamic error) =>
            Assets.screens.brgimg.image(fit: BoxFit.fitWidth),
      ),
    );
  }
}
