import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:shimmer/shimmer.dart';
import '../../account/widgets/use_avatar.dart';
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
    const urlImage =
        'https://cdn.pixabay.com/photo/2017/09/27/15/52/man-2792456_1280.jpg';
    return Scaffold(
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 100,
            child: Row(
              children: [
                Assets.screens.logoTrans.svg(width: 100),
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
              style: Theme.of(context).textTheme.labelLarge,
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
              style: Theme.of(context).textTheme.labelLarge,
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
          // SizedBox(
          //   width: 300,
          //   height: 100,
          //   child: Shimmer.fromColors(
          //     baseColor: Color.fromARGB(255, 116, 114, 113),
          //     highlightColor: Color.fromARGB(255, 189, 186, 165),
          //     child: UserAvatar(
          //         avatarSize: 30,
          //         cameraContainerSize: 0,
          //         cameraSize: 0,
          //         textSize: Theme.of(context).textTheme.titleLarge,
          //         userName: 'userName',
          //         urlImage: urlImage),
          //   ),
          // ),
        ],
      ),
    );
  }
}


// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePage();
// }

// class _HomePage extends State<HomePage> {
//   final String imageUrl =
//       'https://static7.depositphotos.com/1044234/755/i/600/depositphotos_7553041-stock-photo-road-tripping.jpg';
//   final String imageUrl2 =
//       'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg';

//   final CacheManager cacheManager = CacheManager(Config('images_Key',
//       maxNrOfCacheObjects: 20, stalePeriod: const Duration(days: 3)));

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Cached Network Image'),
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             children: [
//               // CachedNetworkImage(
//               //   cacheKey: 'first_image',
//               //   cacheManager: cacheManager,
//               //   key: UniqueKey(),
//               //   imageUrl: imageUrl,
//               //   width: MediaQuery.of(context).size.width,
//               //   height: 250,
//               //   progressIndicatorBuilder: (context, url, progress) {
//               //     return ColoredBox(
//               //       color: Colors.black12,
//               //       child: Center(
//               //           child: CircularProgressIndicator(
//               //         value: progress.progress,
//               //       )),
//               //     );
//               //   },
//               //   fit: BoxFit.cover,
//               // ),
//               // const SizedBox(
//               //   height: 20,
//               // ),
//               // CircleAvatar(
//               //   key: UniqueKey(),
//               //   radius: 100,
//               //   backgroundColor: Colors.black12,
//               //   backgroundImage: CachedNetworkImageProvider(imageUrl2,
//               //       cacheManager: cacheManager, cacheKey: 'second_image'),
//               // ),
//               // const SizedBox(
//               //   height: 20,
//               // ),
//               // CachedNetworkImage(
//               //   imageUrl:
//               //       'https://cdn.pixabay.com/photo/2017/09/27/15/52/man-2792456_1280.jpg',
//               //   placeholder: (context, url) => CircleAvatarAccount(
//               //     radiusCircleAvatar: 60,
//               //     radiusCircleAvatarIcon: 13,
//               //     sizeIcon: 20,
//               //     sizeText: Theme.of(context).textTheme.headline1,
//               //     userName: 'userName',
//               //     urlImage: '',
//               //   ),
//               //   imageBuilder: (context, image) => CircleAvatar(
//               //     backgroundImage: image,
//               //     radius: 50,
//               //   ),
//               // ),
//               UserAvatar(
//                   avatarSize: 90,
//                   cameraContainerSize: 25,
//                   cameraSize: 30,
//                   textSize: Theme.of(context).textTheme.headline1,
//                   userName: 'userName',
//                   urlImage:
//                       'https://cdn.pixabay.com/photo/2017/09/27/15/52/man-2792456_1280.jpg'),
//               // ElevatedButton(
//               //     onPressed: clearCache, child: const Text('Clear cache')),
//               // ElevatedButton(
//               //     onPressed: () => clearCache(index: 0),
//               //     child: const Text('Clear First Image')),
//               // ElevatedButton(
//               //     onPressed: () => clearCache(index: 1),
//               //     child: const Text('Clear Second Image')),
//             ],
//           ),
//         ));
//   }

//   void clearCache({int? index}) {
//     imageCache.clear();
//     imageCache.clearLiveImages();

//     if (index != null) {
//       cacheManager.removeFile(index == 0 ? 'first_image' : 'second_image');
//     } else {
//       cacheManager.emptyCache();
//     }

//     // DefaultCacheManager().emptyCache();
//     setState(() {});
//   }
// }
