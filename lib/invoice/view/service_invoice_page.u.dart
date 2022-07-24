import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../gen/assets.gen.dart';
import '../../l10n/l10n.dart';
import '../../sevice/model/sevice_data.dart';
import '../widgets/default_avatar.dart';
//import 'package:cached_network_image/cached_network_image.dart';

class ServiceInvoicePage extends StatelessWidget {
  const ServiceInvoicePage({super.key});
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final services = ServiceData.fetchAll();
    int totalPrice = 0;
    for (var i = 0; i < services.length; i++) {
      totalPrice += services.elementAt(i).price;
    }
//final totalPriceService =  totalPrice.(services);
    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText(
          'Hoá đơn dịch vụ',
          style: Theme.of(context)
              .textTheme
              .headlineSmall
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
            child: Column(
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
                              fadeInDuration: const Duration(milliseconds: 50),
                              fadeOutDuration: const Duration(milliseconds: 50),
                              imageUrl:
                                  'https://cdn.pixabay.com/photo/2017/09/27/15/52/man-2792456_1280s.jpg',
                              placeholder: (context, url) {
                                return DefaultAvatar(
                                  textSize:
                                      Theme.of(context).textTheme.titleLarge,
                                  userName: 'Nguyen Van B',
                                );
                              },
                              // ignore: implicit_dynamic_parameter
                              errorWidget: (context, url, error) {
                                return DefaultAvatar(
                                  textSize:
                                      Theme.of(context).textTheme.titleLarge,
                                  userName: 'Nguyen Van B',
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
                          const Padding(padding: EdgeInsets.only(left: 16)),
                          AutoSizeText(
                            'Nguyễn Văn B',
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                          Row(
                            children: [
                              AutoSizeText(
                                '4.9',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge!
                                    .copyWith(
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
                                style: Theme.of(context).textTheme.labelLarge,
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    AutoSizeText(
                      'Địa chỉ : 12, Hào Nam, Đống Đa, Hà Nội',
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                const Divider(
                  height: 1,
                  thickness: 1,
                ),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      AutoSizeText(
                        'Chi tiết hoá đơn',
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: services.length,
                    itemBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            AutoSizeText(
                              services.elementAt(index).name,
                              style: Theme.of(context).textTheme.labelLarge,
                            ),
                            AutoSizeText(
                              '${services.elementAt(index).price}Đ',
                              style: Theme.of(context).textTheme.labelLarge,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Divider(
                  height: 1,
                  thickness: 1,
                ),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      AutoSizeText(
                        l10n.total,
                        style: Theme.of(context).textTheme.labelLarge!.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      AutoSizeText(
                        //'${service.price}Đ',
                        '$totalPriceĐ',
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 300,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 80,
            child: Container(
              padding: const EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: TextButton.icon(
                          style: TextButton.styleFrom(
                            fixedSize: const Size(155, 50),
                            textStyle: Theme.of(context).textTheme.labelLarge,
                            backgroundColor:
                                Theme.of(context).colorScheme.onInverseSurface,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          onPressed:
                              () {}, // TODO(namngoc231): implement payments
                          icon: const SizedBox(
                            width: 40,
                            child: Icon(Icons.home),
                          ),
                          label: AutoSizeText(
                            'Tiền mặt',
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: TextButton.icon(
                          style: TextButton.styleFrom(
                            fixedSize: const Size(155, 50),
                            textStyle: Theme.of(context).textTheme.labelLarge,
                            backgroundColor:
                                Theme.of(context).colorScheme.onInverseSurface,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          onPressed:
                              () {}, // TODO(namngoc231): implement payments
                          icon: const SizedBox(
                            width: 40,
                            child: Icon(Icons.home),
                            // child: Assets.screens.iconsZalo.svg(),
                          ),
                          label: AutoSizeText(
                            'Ưu đãi',
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.all(16),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Theme.of(context).cardColor),
              child: ElevatedButton(
                onPressed: () {},
                style: Theme.of(context).elevatedButtonTheme.style,
                child: AutoSizeText(
                  'Xác nhận',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
