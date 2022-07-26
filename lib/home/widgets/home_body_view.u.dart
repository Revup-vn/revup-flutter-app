import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../gen/assets.gen.dart';
import '../../l10n/l10n.dart';
import '../bloc/home_bloc.dart';
import 'repair_review_home_page.u.dart';
import 'support_home_page.u.dart';

class HomeBodyView extends StatelessWidget {
  const HomeBodyView({super.key});
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Scaffold(
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 100,
            child: Row(
              children: [
                Assets.screens.logoTrans.svg(fit: BoxFit.cover),
              ],
            ),
          ),
          const SupportHomePage(),
          Padding(
            padding: const EdgeInsets.all(16),
            child: AutoSizeText(
              l10n.rateLabel,
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ),
          const RepairReviewHomePage(),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 0, 16),
            child: AutoSizeText(
              l10n.discoverNowLabel,
              style: Theme.of(context)
                      .textTheme
                      .labelLarge
                      ?.copyWith(fontWeight: FontWeight.bold) ??
                  const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              return state.when(
                initial: () => const Text('Empty'),
                loading: () => const Center(child: CircularProgressIndicator()),
                failure: () => const Text('Failed'),
                success: (provider, imageList) => Swiper(
                  layout: SwiperLayout.STACK,
                  itemCount: imageList.length(),
                  itemBuilder: (context, index) {
                    return CachedNetworkImage(
                      fit: BoxFit.cover,
                      imageUrl: imageList.get(index).getOrElse(
                            () =>
                                'https://www.tiendauroi.com/wp-content/uploads/2020/02/shopee-freeship-xtra-750x233.jpg',
                          ),
                      progressIndicatorBuilder: (context, url, progress) {
                        return ColoredBox(
                          color: Colors.black12,
                          child: Center(
                            child: CircularProgressIndicator(
                              value: progress.progress,
                            ),
                          ),
                        );
                      },
                    );
                  },
                  itemWidth: 400,
                  itemHeight: 100,
                ),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: AutoSizeText(
              l10n.dealsForYouLabel,
              style: Theme.of(context)
                      .textTheme
                      .labelLarge
                      ?.copyWith(fontWeight: FontWeight.bold) ??
                  const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              return state.when(
                initial: () => const Text('Empty'),
                loading: () => const Center(child: CircularProgressIndicator()),
                failure: () => const Text('Failed'),
                success: (provider, imageList) => Swiper(
                  layout: SwiperLayout.STACK,
                  itemCount: imageList.length(),
                  itemBuilder: (context, index) {
                    return CachedNetworkImage(
                      fit: BoxFit.cover,
                      imageUrl: imageList.get(index).getOrElse(
                            () =>
                                'https://www.tiendauroi.com/wp-content/uploads/2020/02/shopee-freeship-xtra-750x233.jpg',
                          ),
                      progressIndicatorBuilder: (context, url, progress) {
                        return ColoredBox(
                          color: Colors.black12,
                          child: Center(
                            child: CircularProgressIndicator(
                              value: progress.progress,
                            ),
                          ),
                        );
                      },
                    );
                  },
                  itemWidth: 400,
                  itemHeight: 100,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
