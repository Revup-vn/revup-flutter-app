import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ListRepairerContent extends StatelessWidget {
  ListRepairerContent({super.key});
  final List<String> item1 = [
    'https://this-person-does-not-exist.com/img/avatar-f23a11a46d5096129b42a5254d3134cc.jpg',
    'Nguyen Van A',
    'Cửa hàng sửa xe A, 14A, ngõ Thanh Bình',
    '4.9',
    '109',
    '500',
    '10',
  ];
  final List<String> item2 = [
    'https://this-person-does-not-exist.com/img/avatar-f23a11a46d5096129b42a5254d3134cc.jpg',
    'Nguyen Van B',
    'Cửa hàng sửa xe A, 14A, ngõ Thanh Bình',
    '4.9',
    '109',
    '500',
    '10',
  ];
  @override
  Widget build(BuildContext context) {
    final iListItems = <List<String>>[item1, item2];
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        return Card(
          color: Theme.of(context).colorScheme.surface,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: ListBody(
            children: [
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 9,
                    child: Column(
                      children: [
                        ListTile(
                          leading: ClipRRect(
                            borderRadius: BorderRadius.circular(48),
                            child: CircleAvatar(
                              child: CachedNetworkImage(
                                height: 64,
                                width: 64,
                                fit: BoxFit.fitWidth,
                                imageUrl: iListItems[index][0],
                              ),
                            ),
                          ),
                          title: AutoSizeText(
                            iListItems[index][1],
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          subtitle: AutoSizeText(
                            iListItems[index][2],
                            style: Theme.of(context).textTheme.bodyMedium,
                            maxLines: 1,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 8),
                          child: Row(
                            children: <Widget>[
                              AutoSizeText(
                                iListItems[index][3],
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                              Icon(
                                Icons.star,
                                color: Theme.of(context)
                                    .colorScheme
                                    .inversePrimary,
                                size: 18,
                              ),
                              AutoSizeText(
                                '(${iListItems[index][4]})',
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                              const Icon(
                                Icons.location_pin,
                                size: 18,
                              ),
                              AutoSizeText(
                                '${iListItems[index][5]} m',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                              const Icon(
                                Icons.timer,
                                size: 18,
                              ),
                              AutoSizeText(
                                '${iListItems[index][6]} minute',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Expanded(
                    child: IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        size: 18,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      },
      itemCount: iListItems.length,
      separatorBuilder: (BuildContext context, int index) => const SizedBox(
        height: 5,
      ),
    );
  }
}
