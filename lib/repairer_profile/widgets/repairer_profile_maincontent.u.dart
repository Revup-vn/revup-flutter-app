import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'repairer_profile_avatar_image.u.dart';
import 'repairer_profile_cover_image.u.dart';
import 'repairer_profile_tabbar.u.dart';

class RepairerProfileMainContent extends StatelessWidget {
  const RepairerProfileMainContent({super.key});

  @override
  Widget build(BuildContext context) {
    const coverHeight = 150;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: <Widget>[
              RepairerProfileCoverImage(coverHeight.toDouble()),
              const Positioned(
                left: 16,
                top: coverHeight - 124 / 2,
                child: RepairerProfileAvatarImage(),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: coverHeight + 124 / 2,
                  left: 16,
                  right: 16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    AutoSizeText(
                      'Nguyễn Văn Toản',
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    AutoSizeText(
                      'Đến với chúng tôi các bạn sẽ là thượng đế',
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Icon(Icons.location_on_outlined),
                        Expanded(
                          child: AutoSizeText(
                            'Q. Đống Đa, Hà Nội',
                            style: Theme.of(context).textTheme.labelLarge,
                            maxLines: 1,
                          ),
                        )
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.star,
                          color: Theme.of(context).colorScheme.inversePrimary,
                        ),
                        Expanded(
                          child: AutoSizeText(
                            '4.7 | 109 lượt',
                            style: Theme.of(context).textTheme.labelLarge,
                            maxLines: 1,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 1,
                      color: Theme.of(context)
                          .colorScheme
                          .inverseSurface
                          .withOpacity(0.2),
                      width: double.infinity,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Expanded(child: RepairerProfileTabBar()),
        ],
      ),
    );
  }
}
