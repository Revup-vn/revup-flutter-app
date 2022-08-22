import 'package:flutter/material.dart' hide Feedback;

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:revup_core/core.dart';

import '../../l10n/l10n.dart';

class OrderFeedback extends StatelessWidget {
  const OrderFeedback({super.key, required this.feedback});
  final ReportFeedback feedback;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return SizedBox(
      height: 170,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 6,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 30,
                            child: Icon(
                              Icons.star,
                              color:
                                  Theme.of(context).colorScheme.inversePrimary,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 5),
                          ),
                          AutoSizeText(
                            l10n.serviceReviewsLabel,
                            style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ) ??
                                const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            child: RatingBar.builder(
                              ignoreGestures: true,
                              initialRating: feedback.rating.toDouble(),
                              itemSize: 25,
                              allowHalfRating: true,
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Theme.of(context)
                                    .colorScheme
                                    .inversePrimary,
                              ),
                              onRatingUpdate: print,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 6,
            ),
            Column(
              children: [
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 30,
                      child: Icon(
                        const IconData(
                          0xf04f,
                          fontFamily: 'MaterialIcons',
                        ),
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 5),
                    ),
                    AutoSizeText(
                      l10n.feedBackLabel,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                              ) ??
                          const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    Expanded(
                      child: AutoSizeText(
                        feedback.desc,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
