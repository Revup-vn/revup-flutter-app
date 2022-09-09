import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../account/widgets/default_avatar.dart';
import '../../l10n/l10n.dart';
import '../models/rating_data.u.dart';

class RepairerProfileFeedback extends StatelessWidget {
  const RepairerProfileFeedback({
    super.key,
    required this.ratingData,
  });
  final IVector<RatingData> ratingData;

  @override
  Widget build(BuildContext context) {
    final data = ratingData.toIterable().toList();

    return ListView.separated(
      padding: const EdgeInsets.only(bottom: 50),
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          elevation: 0,
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          leading: ClipRRect(
                            borderRadius: BorderRadius.circular(48),
                            child: CircleAvatar(
                              child: CachedNetworkImage(
                                height: 64,
                                width: 64,
                                fit: BoxFit.fitWidth,
                                imageUrl: data[index].imageUrl,
                                errorWidget: (context, url, dynamic error) =>
                                    DefaultAvatar(
                                  textSize:
                                      Theme.of(context).textTheme.headline1,
                                  userName: data[index].consumerName,
                                ),
                              ),
                            ),
                          ),
                          title: AutoSizeText(
                            data[index].consumerName,
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                            maxLines: 1,
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RatingBar.builder(
                                ignoreGestures: true,
                                initialRating: data[index].rating.toDouble(),
                                itemSize: 19,
                                allowHalfRating: true,
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .inversePrimary,
                                ),
                                onRatingUpdate: (value) {
                                  // TODO(cantgim): implement sthg
                                },
                              ),
                              AutoSizeText(
                                data[index].description.isEmpty
                                    ? ''
                                    : data[index].description,
                                style: Theme.of(context).textTheme.bodyMedium,
                                maxLines: 2,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.topCenter,
                      child: AutoSizeText(
                        (Duration(
                                      milliseconds: DateTime.now()
                                              .millisecondsSinceEpoch -
                                          data[index]
                                              .createdTime
                                              .millisecondsSinceEpoch,
                                    ).inHours) /
                                    24 <
                                1
                            ? Duration(
                                      milliseconds: DateTime.now()
                                              .millisecondsSinceEpoch -
                                          data[index]
                                              .createdTime
                                              .millisecondsSinceEpoch,
                                    ).inHours >
                                    1
                                ? '''
${Duration(
                                    milliseconds:
                                        DateTime.now().millisecondsSinceEpoch -
                                            data[index]
                                                .createdTime
                                                .millisecondsSinceEpoch,
                                  ).inHours} ${context.l10n.hoursAgoLabel}'''
                                : context.l10n.todayLabel
                            : '''
${((Duration(
                                  milliseconds:
                                      DateTime.now().millisecondsSinceEpoch -
                                          data[index]
                                              .createdTime
                                              .millisecondsSinceEpoch,
                                ).inHours) / 24).floor()} ${context.l10n.yesterdayLabel}''',
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
      itemCount: ratingData.length(),
      separatorBuilder: (BuildContext context, int index) => const SizedBox(
        height: 5,
      ),
    );
  }
}
