import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:card_swiper/card_swiper.dart';
import '../../gen/assets.gen.dart';
import '../../l10n/l10n.dart';
import '../widgets/repair_review_home_page.dart';
import '../widgets/support_home_page_item.dart';

class HomeBodyPage extends StatelessWidget {
  const HomeBodyPage({super.key});
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final imageList = [
      'https://www.tiendauroi.com/wp-content/uploads/2020/02/shopee-freeship-xtra-750x233.jpg',
      'https://e-magazine.asiamedia.vn/wp-content/uploads/2021/07/top-10-hang-dau-nhot-noi-tieng-nhat-tai-viet-nam-21.jpg',
      'https://www.tiendauroi.com/wp-content/uploads/2020/02/shopee-freeship-xtra-750x233.jpg',
      'https://e-magazine.asiamedia.vn/wp-content/uploads/2021/07/top-10-hang-dau-nhot-noi-tieng-nhat-tai-viet-nam-21.jpg',
    ];
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
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          Swiper(
            layout: SwiperLayout.TINDER,
            itemCount: imageList.length,
            itemBuilder: (context, index) {
              return CachedNetworkImage(
                fit: BoxFit.cover,
                imageUrl: imageList[index],
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
          Padding(
            padding: const EdgeInsets.all(16),
            child: AutoSizeText(
              l10n.dealsForYouLabel,
              style: Theme.of(context)
                  .textTheme
                  .labelLarge
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          Swiper(
            layout: SwiperLayout.TINDER,
            itemCount: imageList.length,
            itemBuilder: (context, index) {
              return CachedNetworkImage(
                fit: BoxFit.cover,
                imageUrl: imageList[index],
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
        ],
      ),
    );
  }
}
