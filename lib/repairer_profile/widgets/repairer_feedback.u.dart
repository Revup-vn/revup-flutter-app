import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RepairerProfileFeedback extends StatelessWidget {
  RepairerProfileFeedback({super.key});
  final List<String> item1 = [
    'https://i.pinimg.com/564x/6d/ba/ee/6dbaee5de0f568b75e0bc7a8fa1576b1.jpg',
    'Khach Hang A',
    'Thợ sửa rất có tâm và có tầm',
    '4.9',
    '5'
  ];
  final List<String> item2 = [
    'https://i.pinimg.com/564x/6d/ba/ee/6dbaee5de0f568b75e0bc7a8fa1576b1.jpg',
    'Khac Hang B',
    'Thợ sửa rất có tâm và có tầm',
    '4.9',
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
                    flex: 2,
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
                            maxLines: 1,
                          ),
                          subtitle: RatingBar.builder(
                            ignoreGestures: true,
                            initialRating: double.parse(iListItems[index][3]),
                            itemSize: 19,
                            allowHalfRating: true,
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color:
                                  Theme.of(context).colorScheme.inversePrimary,
                            ),
                            onRatingUpdate: (double value) {},
                          ),
                        ),
                        AutoSizeText(
                          iListItems[index][2],
                          style: Theme.of(context).textTheme.bodyMedium,
                          maxLines: 2,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: AutoSizeText(
                      '${iListItems[index][4]} ngày trước',
                      maxLines: 1,
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
