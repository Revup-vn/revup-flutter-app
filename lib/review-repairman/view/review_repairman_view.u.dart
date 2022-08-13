import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:revup_core/core.dart';

import '../../invoice/models/provider_data.dart';
import '../../invoice/widgets/default_avatar.dart';
import '../../l10n/l10n.dart';
import '../../shared/widgets/dismiss_keyboard.dart';
import '../bloc/review_repairman_bloc.u.dart';

class ReviewRepairmanView extends StatelessWidget {
  ReviewRepairmanView(
    this.providerData,
    this.completer, {
    super.key,
  });
  final ProviderData providerData;
  final Completer completer;
  final _formKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return DismissKeyboard(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: 8,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 50, 16, 0),
                  child: Column(
                    children: [
                      SizedBox(
                        child: Row(
                          children: <Widget>[
                            AutoSizeText(
                              l10n.reviewRepairmentLabel,
                              style: Theme.of(context)
                                      .textTheme
                                      .titleLarge
                                      ?.copyWith(fontWeight: FontWeight.bold) ??
                                  const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      SizedBox(
                        child: Row(
                          children: <Widget>[
                            AutoSizeText(
                              l10n.sendFeedbackLabel,
                              style: Theme.of(context).textTheme.labelSmall,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      SizedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: [
                                Column(
                                  children: [
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    SizedBox(
                                      height: 50,
                                      width: 50,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(48),
                                        child: CachedNetworkImage(
                                          fadeInDuration:
                                              const Duration(milliseconds: 50),
                                          fadeOutDuration:
                                              const Duration(milliseconds: 50),
                                          imageUrl:
                                              providerData.providerUrlAvatar,
                                          placeholder: (context, url) {
                                            return DefaultAvatar(
                                              textSize: Theme.of(context)
                                                  .textTheme
                                                  .titleLarge,
                                              userName:
                                                  providerData.providerName,
                                            );
                                          },
                                          errorWidget:
                                              (context, url, dynamic error) {
                                            return DefaultAvatar(
                                              textSize: Theme.of(context)
                                                  .textTheme
                                                  .titleLarge,
                                              userName:
                                                  providerData.providerName,
                                            );
                                          },
                                          height: 64,
                                          width: 64,
                                          fit: BoxFit.fitWidth,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 16),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(left: 16),
                                      ),
                                      AutoSizeText(
                                        providerData.providerName,
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelLarge,
                                      ),
                                      Row(
                                        children: [
                                          AutoSizeText(
                                            providerData.ratingStar.toString(),
                                            style: Theme.of(context)
                                                    .textTheme
                                                    .labelLarge
                                                    ?.copyWith(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ) ??
                                                const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                          Icon(
                                            Icons.star,
                                            size: 20,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .inversePrimary,
                                          ),
                                          AutoSizeText(
                                            '(${providerData.totalStarRating})',
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelLarge,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(16),
                        child: Center(
                          child: Column(
                            children: [
                              RatingBar.builder(
                                itemSize: 30,
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .inversePrimary,
                                ),
                                onRatingUpdate: (double value) {
                                  context.read<ReviewRepairmanBloc>().add(
                                        ReviewRepairmanEvent.fieldFill(
                                          rating: value.floor(),
                                        ),
                                      );
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      SizedBox(
                        child: Row(
                          children: <Widget>[
                            AutoSizeText(
                              l10n.yourFeedbackLabel,
                              style: Theme.of(context).textTheme.labelSmall,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      FormBuilder(
                        key: _formKey,
                        child: FormBuilderTextField(
                          name: 'feedback',
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: '',
                          ),
                          keyboardType: TextInputType.multiline,
                          maxLines: 5,
                          maxLength: 1000,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(16),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color: Theme.of(context).cardColor),
                  child: BlocSelector<ReviewRepairmanBloc, ReviewRepairmanState,
                      int>(
                    selector: (state) => state.maybeMap(
                      ready: (value) => value.rating,
                      orElse: () => 0,
                    ),
                    builder: (context, rating) {
                      return ElevatedButton(
                        onPressed: rating != 0
                            ? () {
                                _formKey.currentState?.saveAndValidate();
                                final feedbackString = _formKey
                                    .currentState?.value['feedback']
                                    .toString();
                                log(feedbackString.toString());
                                completer.complete(
                                  ReportFeedback(
                                    created: DateTime.now(),
                                    desc: feedbackString ?? '',
                                    rating: rating,
                                    updated: DateTime.now(),
                                  ),
                                );
                                context.router.pop();
                              }
                            : null,
                        style: Theme.of(context).elevatedButtonTheme.style,
                        child: AutoSizeText(
                          l10n.sendLabel,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
