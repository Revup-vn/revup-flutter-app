import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:revup_core/core.dart';

import '../../configs/video_call_config.dart';
import '../../invoice/widgets/default_avatar.dart';
import '../../l10n/l10n.dart';
import '../../shared/utils.dart';
import '../../shared/widgets/dismiss_keyboard.dart';

class ReviewRepairmanView extends StatelessWidget {
  const ReviewRepairmanView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final mayBeUser = getUser(context.read<AuthenticateBloc>().state);
    //late AppUser user ;
    var user = AppUser.consumer(
      uuid: '1a',
      firstName: 'Nam',
      lastName: 'Ngoc',
      phone: '0866199497',
      dob: DateTime.now(),
      addr: 'Ninh Binh',
      email: 'namngoc231@gmail.com',
      active: true,
      avatarUrl:
          'https://cdn.pixabay.com/photo/2017/09/27/15/52/man-2792456_1280s.jpg',
      createdTime: DateTime.now(),
      lastUpdatedTime: DateTime.now(),
      vac: const VideoCallAccount(
        id: '1a',
        username: '0866199497',
        pwd: DEFAULT_PASS,
        email: 'namngoc231@gmail.com',
      ),
    );
    if (mayBeUser.isSome()) {
      user = mayBeUser.toNullable()!;
    } else {
      context.router.popUntil((route) => true);
    }

    return DismissKeyboard(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          leading: const Icon(Icons.close),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 8,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
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
                            // mainAxisAlignment: MainAxisAlignment.start,
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
                                        imageUrl: user.avatarUrl,
                                        placeholder: (context, url) {
                                          return DefaultAvatar(
                                            textSize: Theme.of(context)
                                                .textTheme
                                                .titleLarge,
                                            userName:
                                                '''${user.firstName} ${user.lastName}''',
                                          );
                                        },
                                        // ignore: implicit_dynamic_parameter
                                        errorWidget: (context, url, error) {
                                          return DefaultAvatar(
                                            textSize: Theme.of(context)
                                                .textTheme
                                                .titleLarge,
                                            userName:
                                                '''${user.firstName} ${user.lastName}''',
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
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(left: 16),
                                    ),
                                    AutoSizeText(
                                      '${user.firstName} ${user.lastName}',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelLarge,
                                    ),
                                    Row(
                                      children: [
                                        AutoSizeText(
                                          '4.9',
                                          style: Theme.of(context)
                                                  .textTheme
                                                  .labelLarge
                                                  ?.copyWith(
                                                    fontWeight: FontWeight.bold,
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
                                          '(107)',
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
                          TextButton(
                            style: TextButton.styleFrom(
                              textStyle: Theme.of(context).textTheme.titleSmall,
                            ),
                            onPressed: () {
                              // TODO(namngoc231): add invoice
                            },
                            child: AutoSizeText(
                              l10n.invoiceDetailsLabel,
                              style: Theme.of(context).textTheme.labelLarge,
                            ),
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
                              initialRating: 4.5,
                              itemSize: 30,
                              allowHalfRating: true,
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Theme.of(context)
                                    .colorScheme
                                    .inversePrimary,
                              ),
                              onRatingUpdate: (double value) {
                                // TODO(namngoc231): rating
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
                    FormBuilderTextField(
                      name: '',
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: '',
                      ),
                      keyboardType: TextInputType.multiline,
                      maxLines: 5,
                      maxLength: 100,
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
                child: ElevatedButton(
                  onPressed: null,
                  style: Theme.of(context).elevatedButtonTheme.style,
                  child: AutoSizeText(
                    l10n.sendLabel,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
