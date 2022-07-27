import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:revup_core/core.dart';

import '../../account/widgets/default_avatar.dart';
import '../../l10n/l10n.dart';
import '../../shared/utils.dart';
import '../bloc/home_bloc.dart';

class RepairReviewHomePage extends StatelessWidget {
  const RepairReviewHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final mayBeUser = getUser(context.read<AuthenticateBloc>().state);
    //late AppUser user ;
    late var user = AppUser.consumer(
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
    );
    if (mayBeUser.isSome()) {
      user = mayBeUser.toNullable()!;
    } else {
      context.router.popUntil((route) => true);
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 50,
                  width: 50,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(48),
                    child: CachedNetworkImage(
                      fadeInDuration: const Duration(milliseconds: 50),
                      fadeOutDuration: const Duration(milliseconds: 50),
                      imageUrl: user.avatarUrl,
                      placeholder: (context, url) {
                        return DefaultAvatar(
                          textSize: Theme.of(context).textTheme.titleLarge,
                          userName: '${user.firstName} ${user.lastName}',
                        );
                      },
                      errorWidget: (context, url, dynamic error) {
                        return DefaultAvatar(
                          textSize: Theme.of(context).textTheme.titleLarge,
                          userName: '${user.firstName} ${user.lastName}',
                        );
                      },
                      height: 64,
                      width: 64,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: AutoSizeText(
                    '${user.firstName} ${user.lastName}',
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                ),
              ],
            ),
            BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                return state.when(
                  initial: () => const Text('Empty'),
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  failure: () => const Text('Failed'),
                  success: (provider, imageList, timeRepair, dayRepair) =>
                      Column(
                    children: [
                      AutoSizeText(
                        '${l10n.serviceAccountLabel}: ${l10n.autoRepairLabel}',
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                      AutoSizeText(
                        '${l10n.timeLabel}: $timeRepair',
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                      AutoSizeText(
                        '${l10n.dayLabel}: $dayRepair',
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                return state.when(
                  initial: () => const Text('Empty'),
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  failure: () => const Text('Failed'),
                  success: (provider, imageList, timeRepair, dayRepair) =>
                      Column(
                    children: [
                      RatingBar.builder(
                        ignoreGestures: true,
                        initialRating: provider.rating,
                        itemSize: 30,
                        allowHalfRating: true,
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Theme.of(context).colorScheme.inversePrimary,
                        ),
                        onRatingUpdate: print,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
