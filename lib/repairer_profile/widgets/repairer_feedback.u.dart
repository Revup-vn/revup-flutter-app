import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../shared/fallbacks.dart';
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
                                imageUrl: data[index].imageUrl.isEmpty
                                    ? kFallbackImage
                                    : data[index].imageUrl,
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
                                data[index].description,
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
                        data[index].createdTime.day != DateTime.now().day
                            ? '''${DateTime.now().difference(data[index].createdTime).inDays + 1} ngày trước'''
                            : 'Today',
                        style: Theme.of(context).textTheme.bodyMedium,
                        maxLines: 1,
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
