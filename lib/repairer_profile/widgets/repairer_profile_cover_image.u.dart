import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class RepairerProfileCoverImage extends StatelessWidget {
  const RepairerProfileCoverImage(this.coverHeight, {super.key});
  final double coverHeight;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: CachedNetworkImage(
        fit: BoxFit.cover,
        width: double.infinity,
        height: coverHeight,
        imageUrl:
            'https://listbds.com/wp-content/uploads/2022/01/cua-hang-sua-xe-may-uy-tin.jpg',
      ),
    );
  }
}
