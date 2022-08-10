import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

import '../../gen/assets.gen.dart';
import '../../l10n/l10n.dart';
import '../bloc/home_bloc.dart';
import 'app_service_panel.u.dart';
import 'repair_review_home_page.u.dart';

class HomeBodyView extends StatelessWidget {
  const HomeBodyView({super.key});
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final blocPage = context.watch<HomeBloc>();
    blocPage.state.maybeWhen(
      initial: () => blocPage.add(const HomeEvent.started()),
      orElse: () => false,
    );

    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
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
              const AppServicePanel(),
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
              state.maybeWhen(
                success: (provider, imageList, timeRepair, dayRepair) => Swiper(
                  layout: SwiperLayout.STACK,
                  itemCount: imageList.length(),
                  itemBuilder: (context, index) {
                    return CachedNetworkImage(
                      fit: BoxFit.cover,
                      imageUrl: imageList.get(index).getOrElse(
                            () =>
                                'https://www.tiendauroi.com/wp-content/uploads/2020/02/shopee-freeship-xtra-750x233.jpg',
                          ),
                    );
                  },
                  itemWidth: 400,
                  itemHeight: 100,
                ),
                orElse: () => Shimmer.fromColors(
                  baseColor: const Color.fromRGBO(224, 224, 224, 1),
                  highlightColor: const Color.fromRGBO(245, 245, 245, 1),
                  child: const SizedBox(
                    width: 400,
                    height: 100,
                  ),
                ),
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
              state.maybeWhen(
                success: (provider, imageList, timeRepair, dayRepair) => Swiper(
                  layout: SwiperLayout.STACK,
                  itemCount: imageList.length(),
                  itemBuilder: (context, index) {
                    return CachedNetworkImage(
                      fit: BoxFit.cover,
                      imageUrl: imageList.get(index).getOrElse(
                            () =>
                                'https://www.tiendauroi.com/wp-content/uploads/2020/02/shopee-freeship-xtra-750x233.jpg',
                          ),
                    );
                  },
                  itemWidth: 400,
                  itemHeight: 100,
                ),
                orElse: () => Shimmer.fromColors(
                  baseColor: const Color.fromRGBO(224, 224, 224, 1),
                  highlightColor: const Color.fromRGBO(245, 245, 245, 1),
                  child: const SizedBox(
                    width: 400,
                    height: 100,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
