import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../invoice/widgets/default_avatar.dart';
import '../../l10n/l10n.dart';

class ReviewRepairmanPage extends StatelessWidget {
  const ReviewRepairmanPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Scaffold(
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
                          'Đánh giá cho thợ sửa',
                          style:
                              Theme.of(context).textTheme.titleLarge!.copyWith(
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
                          'Đánh giá, gửi phản hồi của bạn dành cho thợ sửa nhé!',
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
                                      imageUrl:
                                          'https://cdn.pixabay.com/photo/2017/09/27/15/52/man-2792456_1280s.jpg',
                                      placeholder: (context, url) {
                                        return DefaultAvatar(
                                          textSize: Theme.of(context)
                                              .textTheme
                                              .titleLarge,
                                          userName: 'Nguyen Van B',
                                        );
                                      },
                                      // ignore: implicit_dynamic_parameter
                                      errorWidget: (context, url, error) {
                                        return DefaultAvatar(
                                          textSize: Theme.of(context)
                                              .textTheme
                                              .titleLarge,
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
                                  const Padding(
                                      padding: EdgeInsets.only(left: 16)),
                                  AutoSizeText(
                                    'Nguyễn Văn B',
                                    style:
                                        Theme.of(context).textTheme.labelLarge,
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
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelLarge,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            textStyle: Theme.of(context).textTheme.titleSmall,
                          ),
                          onPressed: () {},
                          child: const Text('Chi tiết hoá đơn'),
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
                            ignoreGestures: true,
                            initialRating: 4.5,
                            itemSize: 30,
                            allowHalfRating: true,
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color:
                                  Theme.of(context).colorScheme.inversePrimary,
                            ),
                            onRatingUpdate: (double value) {},
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
                          'Phản hồi của bạn',
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  FormBuilderTextField(
                    name: 'desc',
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'dsds',
                    ),
                    keyboardType: TextInputType.multiline,
                    maxLines: 5,
                    maxLength: 1000,
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
                  l10n.updateLabel,
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
