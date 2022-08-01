import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:revup_core/core.dart';

import '../../account/widgets/default_avatar.dart';
import '../../l10n/l10n.dart';

class HistoryDetailView extends StatelessWidget {
  const HistoryDetailView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
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
    );

    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText(
          'Thông tin đơn hàng',
          style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(fontWeight: FontWeight.bold) ??
              const TextStyle(
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 8,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 170,
                    color: Theme.of(context).colorScheme.onInverseSurface,
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              AutoSizeText(
                                'Mã đơn hàng: 123456',
                                style: Theme.of(context)
                                        .textTheme
                                        .titleLarge
                                        ?.copyWith(
                                          fontWeight: FontWeight.bold,
                                        ) ??
                                    const TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AutoSizeText(
                                    'Bạn đã hủy đơn hàng này.',
                                    style: Theme.of(context)
                                            .textTheme
                                            .titleMedium
                                            ?.copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .error,
                                            ) ??
                                        TextStyle(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .error,
                                        ),
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  AutoSizeText(
                                    'Thời gian đặt dịch vụ ',
                                    style: Theme.of(context)
                                            .textTheme
                                            .labelLarge
                                            ?.copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onSurfaceVariant,
                                            ) ??
                                        TextStyle(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSurfaceVariant,
                                        ),
                                  ),
                                  const SizedBox(
                                    height: 6,
                                  ),
                                  AutoSizeText(
                                    'Thời gian hủy ',
                                    style: Theme.of(context)
                                            .textTheme
                                            .labelLarge
                                            ?.copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onSurfaceVariant,
                                            ) ??
                                        TextStyle(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSurfaceVariant,
                                        ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  IconButton(
                                    icon: Icon(
                                      const IconData(
                                        0xf050f,
                                        fontFamily: 'MaterialIcons',
                                      ),
                                      size: 30,

                                      color:
                                          Theme.of(context).colorScheme.error,
                                      // Icons.inventory_outlined,
                                      // color: Theme.of(context)
                                      // .colorScheme
                                      // .tertiary,
                                    ),
                                    onPressed: () {},
                                  ),
                                  AutoSizeText(
                                    '12/06/2022  16:30',
                                    style: Theme.of(context)
                                            .textTheme
                                            .labelLarge
                                            ?.copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onSurfaceVariant,
                                            ) ??
                                        TextStyle(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSurfaceVariant,
                                        ),
                                  ),
                                  const SizedBox(
                                    height: 6,
                                  ),
                                  AutoSizeText(
                                    '12/06/2022  16:40',
                                    style: Theme.of(context)
                                            .textTheme
                                            .labelLarge
                                            ?.copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onSurfaceVariant,
                                            ) ??
                                        TextStyle(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSurfaceVariant,
                                        ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Divider(
                    height: 1,
                    thickness: 10,
                  ),
                  SizedBox(
                    height: 235,
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              SizedBox(
                                width: 30,
                                child: Icon(
                                  const IconData(
                                    0xee4b,
                                    fontFamily: 'MaterialIcons',
                                  ),
                                  size: 30,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .inversePrimary,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 5),
                              ),
                              AutoSizeText(
                                'Chi tiết đơn hàng',
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
                          const SizedBox(
                            height: 6,
                          ),
                          AutoSizeText(
                            'Dịch vụ xe máy - Thay săm xe',
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          AutoSizeText(
                            'Địa chỉ : Đại học FPT,Thạch Thất, Hà Nội',
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          AutoSizeText(
                            'Loại xe : Honda Wave RSX',
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          const Divider(
                            height: 1,
                            thickness: 1,
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AutoSizeText(
                                    'Tổng tiền dịch vụ',
                                    style: Theme.of(context)
                                            .textTheme
                                            .labelLarge
                                            ?.copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onSurfaceVariant,
                                            ) ??
                                        TextStyle(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onInverseSurface,
                                        ),
                                  ),
                                  const SizedBox(
                                    height: 6,
                                  ),
                                  AutoSizeText(
                                    'Phí di chuyển',
                                    style: Theme.of(context)
                                            .textTheme
                                            .labelLarge
                                            ?.copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onSurfaceVariant,
                                            ) ??
                                        TextStyle(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSurfaceVariant,
                                        ),
                                  ),
                                  const SizedBox(
                                    height: 6,
                                  ),
                                  AutoSizeText(
                                    'Thành tiền',
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
                                  const SizedBox(
                                    height: 6,
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AutoSizeText(
                                    '80.000đ',
                                    style: Theme.of(context)
                                            .textTheme
                                            .labelLarge
                                            ?.copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onSurfaceVariant,
                                            ) ??
                                        TextStyle(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSurfaceVariant,
                                        ),
                                  ),
                                  const SizedBox(
                                    height: 6,
                                  ),
                                  AutoSizeText(
                                    '12.000đ',
                                    style: Theme.of(context)
                                            .textTheme
                                            .labelLarge
                                            ?.copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onSurfaceVariant,
                                            ) ??
                                        TextStyle(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSurfaceVariant,
                                        ),
                                  ),
                                  const SizedBox(
                                    height: 6,
                                  ),
                                  AutoSizeText(
                                    '92.000đ',
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
                                  const SizedBox(
                                    height: 6,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Divider(
                    height: 1,
                    thickness: 10,
                  ),
                  SizedBox(
                    height: 170,
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              SizedBox(
                                width: 30,
                                child: Icon(
                                  const IconData(
                                    0xe13d,
                                    fontFamily: 'MaterialIcons',
                                  ),
                                  size: 30,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .inversePrimary,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 5),
                              ),
                              AutoSizeText(
                                'Thông tin dịch vụ',
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
                          const SizedBox(
                            height: 6,
                          ),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 50,
                                      width: 50,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(48),
                                        child: CachedNetworkImage(
                                          fadeInDuration: const Duration(
                                            milliseconds: 50,
                                          ),
                                          fadeOutDuration: const Duration(
                                            milliseconds: 50,
                                          ),
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
                                          errorWidget:
                                              (context, url, dynamic error) {
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
                                    const SizedBox(
                                      height: 6,
                                    ),
                                    AutoSizeText(
                                      'Nam Ngoc',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelLarge,
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: <Widget>[
                                        SizedBox(
                                          width: 30,
                                          child: Icon(
                                            Icons.phone,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .inversePrimary,
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(right: 5),
                                        ),
                                        AutoSizeText(
                                          'SĐT : 0123456789',
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelLarge,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 6,
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        SizedBox(
                                          width: 30,
                                          child: Icon(
                                            const IconData(
                                              0xe3ab,
                                              fontFamily: 'MaterialIcons',
                                            ),
                                            color: Theme.of(context)
                                                .colorScheme
                                                .inversePrimary,
                                          ),
                                        ),
                                        Expanded(
                                          child: AutoSizeText(
                                            '''Địa chỉ : 12, Hào Nam, Đống Đa, Hà Nội''',
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelLarge,
                                            maxLines: 3,
                                          ),
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
                  ),
                  const Divider(
                    height: 1,
                    thickness: 10,
                  ),
                  SizedBox(
                    height: 115,
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              SizedBox(
                                width: 30,
                                child: Icon(
                                  Icons.payment,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .inversePrimary,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 5),
                              ),
                              AutoSizeText(
                                'Phương thức thanh toán',
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
                          const SizedBox(
                            height: 6,
                          ),
                          Row(
                            children: <Widget>[
                              Column(
                                children: [
                                  AutoSizeText(
                                    'Thanh toán trực tiếp',
                                    style:
                                        Theme.of(context).textTheme.labelLarge,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            // bottom: 0,
            child: Container(
              padding: const EdgeInsets.all(16),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Theme.of(context).cardColor),
              child: ElevatedButton(
                onPressed: () {},
                style: Theme.of(context).elevatedButtonTheme.style,
                child: const AutoSizeText('Liên hệ dịch vụ sửa chữa'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
