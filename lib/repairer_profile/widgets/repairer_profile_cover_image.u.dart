import 'package:flutter/material.dart';

import 'package:cached_network_image/cached_network_image.dart';

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
      ),
    );
  }
}
