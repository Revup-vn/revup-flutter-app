import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../gen/assets.gen.dart';
import '../../l10n/l10n.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Scaffold(
      appBar: AppBar(title: Text(l10n.revupAppBarTitle)),
      body: const Center(child: Text('REVUP APP')),
    );

    // return SizedBox(
    //   height: 48,
    //   width: 48,
    //   child: ClipRRect(
    //     borderRadius: BorderRadius.circular(48),
    //     child: CachedNetworkImage(
    //       fadeInDuration: const Duration(milliseconds: 50),
    //       fadeOutDuration: const Duration(milliseconds: 50),
    //       imageUrl:
    //           'https://images.unsplash.com/photo-1597589022928-bb4002c099ec?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1160&q=80',
    //       placeholder: (context, url) => Assets.screens.dfAvatar.image(
    //         fit: BoxFit.cover,
    //         height: 64,
    //         gaplessPlayback: true,
    //         width: 64,
    //       ),
    //       // ignore: implicit_dynamic_parameter
    //       errorWidget: (context, url, error) {
    //         return Assets.screens.dfAvatar.image(
    //           fit: BoxFit.cover,
    //           height: 64,
    //           gaplessPlayback: true,
    //           width: 64,
    //         );
    //       },
    //       height: 64,
    //       width: 64,
    //       fit: BoxFit.fitWidth,
    //     ),
    //   ),
    // );
  }
}
