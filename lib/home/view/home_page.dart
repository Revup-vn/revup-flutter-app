import 'package:auto_size_text/auto_size_text.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../l10n/l10n.dart';
import '../widgets/repair_review_home_page.dart';
import '../widgets/support_home_page_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
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
            child: SvgPicture.asset(
              'assets/screens/logo_trans.svg',
              alignment: Alignment.bottomLeft,
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
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ),
          Swiper(
            layout: SwiperLayout.TINDER,
            itemCount: imageList.length,
            itemBuilder: (context, index) {
              return Image.network(
                imageList[index],
                fit: BoxFit.cover,
              );
            },
            itemWidth: 400,
            itemHeight: 100,
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: AutoSizeText(
              l10n.dealsForYouLabel,
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ),
          Swiper(
            layout: SwiperLayout.TINDER,
            itemCount: imageList.length,
            itemBuilder: (context, index) {
              return Image.network(
                imageList[index],
                fit: BoxFit.cover,
              );
            },
            itemWidth: 400,
            itemHeight: 100,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: l10n.homeLabel,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.restore),
            label: l10n.activateLabel,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.notifications),
            label: l10n.notificationLabel,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.account_circle),
            label: l10n.accountLabel,
          ),
        ],
      ),
    );
  }
}
