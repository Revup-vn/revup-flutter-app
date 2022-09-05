import 'package:auto_size_text/auto_size_text.dart';
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
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: AutoSizeText(
          l10n.workerRepairLabel,
          style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontWeight: FontWeight.bold) ??
              const TextStyle(
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          AutoSizeText(
                            l10n.serviceRequestLabel,
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                          IconButton(
                            icon: const Icon(Icons.add_box_outlined),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 2,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          child: Container(
                            height: 96,
                            child: ListTile(
                              leading: SizedBox(
                                height: 64,
                                width: 64,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: CachedNetworkImage(
                                    imageUrl:
                                        'https://images.unsplash.com/photo-1662298504584-f44ff53aa48a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
                                    placeholder: (context, url) =>
                                        Assets.screens.dfAvatar.image(
                                      fit: BoxFit.fill,
                                      height: 64,
                                      gaplessPlayback: true,
                                      width: 64,
                                    ),
                                    errorWidget: (context, url, dynamic error) {
                                      return Assets.screens.dfAvatar.image(
                                        fit: BoxFit.fill,
                                        height: 64,
                                        gaplessPlayback: true,
                                        width: 64,
                                      );
                                    },
                                    height: 80,
                                    width: 80,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              title: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  AutoSizeText(
                                    'Tên dịch lllllllllllooooaaaaaaaaasvụ',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: AutoSizeText(
                                          '15.000.0000000000đ',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      AutoSizeText(
                                        'Đã thanh toán',
                                        style: TextStyle(color: Colors.green),
                                        maxFontSize: 12,
                                        minFontSize: 8,
                                      ),
                                    ],
                                  ),
                                  AutoSizeText(
                                    'Sản phẩm: Săm Gttttttttttttttttyyyyyyyytt',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                    const SizedBox(
                      height: 150,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(16, 6, 16, 0),
            width: MediaQuery.of(context).size.width,
            child: SizedBox(
              width: 30,
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  AutoSizeText(
                    l10n.total,
                    style: Theme.of(context)
                            .textTheme
                            .titleSmall
                            ?.copyWith(fontWeight: FontWeight.bold) ??
                        const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  AutoSizeText(
                    'oooooooooooo',
                    style: Theme.of(context).textTheme.labelLarge,
                  )
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
            width: MediaQuery.of(context).size.width,
            child: ElevatedButton(
              onPressed: null,
              style: Theme.of(context).elevatedButtonTheme.style,
              child: AutoSizeText(
                l10n.updateLabel,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
