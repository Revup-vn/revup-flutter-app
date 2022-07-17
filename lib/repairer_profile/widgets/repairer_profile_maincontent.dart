import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'repairer_profile_avatar_image.dart';
import 'repairer_profile_cover_image.dart';

class RepairerProfileMainContent extends StatelessWidget {
  const RepairerProfileMainContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Column(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    const RepairerProfileCoverImage(),
                    Positioned(
                      bottom: 10,
                      left: 16,
                      child: Row(
                        children: [
                          const RepairerProfileAvatarImage(),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AutoSizeText(
                                'Nguyen Van A',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .copyWith(fontWeight: FontWeight.bold),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .inversePrimary,
                                  ),
                                  AutoSizeText.rich(
                                    TextSpan(
                                      text: '4.9',
                                      children: <InlineSpan>[
                                        TextSpan(
                                          text: '(107 đánh giá)',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2,
                                        ),
                                      ],
                                      style:
                                          Theme.of(context).textTheme.bodyLarge,
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.home_outlined,
                                    color:
                                        Theme.of(context).colorScheme.onPrimary,
                                  ),
                                  AutoSizeText(
                                    '77 Khuất Duy Tiến, p.Nhân Chính, q.Thanh Xuân, Hà Nội',
                                    style:
                                        Theme.of(context).textTheme.labelLarge,
                                    maxLines: 2,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.format_quote_outlined,
                                    color:
                                        Theme.of(context).colorScheme.onPrimary,
                                  ),
                                  AutoSizeText(
                                    'Đến với chúng tôi khách hàng luôn là thượng đế',
                                    style:
                                        Theme.of(context).textTheme.labelLarge,
                                    maxLines: 2,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Expanded(
                flex: 2,
                child: SizedBox(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
