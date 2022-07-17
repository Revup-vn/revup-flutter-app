import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class RepairerProfileCoverImage extends StatelessWidget {
  const RepairerProfileCoverImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
        image: DecorationImage(
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Theme.of(context).colorScheme.shadow.withOpacity(0.6),
            BlendMode.dstATop,
          ),
          image: const CachedNetworkImageProvider(
            'https://inbienquangcao.vn/wp-content/uploads/2020/02/Ma%CC%82%CC%83u-bie%CC%82%CC%89n-qua%CC%89ng-ca%CC%81o-su%CC%9B%CC%89a-xe.jpg',
          ),
        ),
      ),
    );
  }
}
