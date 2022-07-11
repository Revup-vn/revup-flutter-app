import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../l10n/l10n.dart';
import '../widgets/account_item.dart';
import '../widgets/default_avatar.dart';
import '../widgets/use_avatar.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final userName = 'Nam Anh';
    final userPhone = '+84989666888';
    const urlImage =
        'https://cdn.pixabay.com/photo/2017/09/27/15/52/man-2792456_1280.jpg';
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.fromLTRB(10, 60, 10, 10),
              // child: UserAvatar(
              //   avatarSize: 60,
              //   cameraContainerSize: 13,
              //   cameraSize: 20,
              //   textSize: Theme.of(context).textTheme.headline1,
              //   userName: userName,
              //   urlImage: urlImage,
              // ),
              child: Stack(
                children: [
                  SizedBox(
                    height: 130,
                    width: 130,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(70),
                      child: CachedNetworkImage(
                        fadeInDuration: const Duration(milliseconds: 50),
                        fadeOutDuration: const Duration(milliseconds: 50),
                        imageUrl: urlImage,
                        // ignore: implicit_dynamic_parameter
                        errorWidget: (context, url, error) {
                          return DefaultAvatar(
                            avatarSize: 60,
                            cameraContainerSize: 25,
                            cameraSize: 22,
                            textSize: Theme.of(context).textTheme.headline1,
                            userName: userName,
                          );
                        },
                        height: 64,
                        width: 64,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: -10,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.camera_alt,
                        size: 25,
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: AutoSizeText(
                userName,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: AutoSizeText(
                userPhone,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: AutoSizeText(
                l10n.accountLabel,
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ),
            AccountItem(
              accountName: l10n.serviceAccountLabel,
              accountIcon: const Icon(Icons.home_repair_service),
              clickCallback: () {},
            ),
            AccountItem(
              accountName: l10n.editProfileLabel,
              accountIcon: const Icon(Icons.portrait),
              clickCallback: () {},
            ),
            AccountItem(
              accountName: l10n.paymentLabel,
              accountIcon: const Icon(Icons.payment),
              clickCallback: () {},
            ),
            AccountItem(
              accountName: l10n.organizationLabel,
              accountIcon: const Icon(Icons.business),
              clickCallback: () {},
            ),
            AccountItem(
              accountName: l10n.changePassWordLabel,
              accountIcon: const Icon(Icons.key),
              clickCallback: () {},
            ),
            AccountItem(
              accountName: l10n.changeLanguageLabel,
              accountIcon:
                  const Icon(IconData(0xe366, fontFamily: 'MaterialIcons')),
              clickCallback: () {},
            ),
            const Divider(
              height: 1,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: AutoSizeText(
                l10n.guideAndSuportLabel,
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ),
            AccountItem(
              accountName: l10n.faqsLabel,
              accountIcon: const Icon(Icons.quiz),
              clickCallback: () {},
            ),
            AccountItem(
              accountName: l10n.termsOfServiceLabel,
              accountIcon: const Icon(Icons.fact_check),
              clickCallback: () {},
            ),
            AccountItem(
              accountName: l10n.aboutUsLabel,
              accountIcon: const Icon(Icons.people),
              clickCallback: () {},
            ),
            AccountItem(
              accountName: l10n.suportsLabel,
              accountIcon: const Icon(Icons.help),
              clickCallback: () {},
            ),
            AccountItem(
              accountName: l10n.logoutLabel,
              accountIcon: const Icon(Icons.logout),
              clickCallback: () {},
            ),
          ],
        ),
      ),
    );
  }
}
