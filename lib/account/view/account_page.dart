import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import '../../l10n/l10n.dart';
import '../widgets/account_item.dart';
import '../widgets/circle_avatar.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.fromLTRB(10, 60, 10, 10),
              child: CircleAvatarAccount(
                radiusCircleAvatar: 60,
                radiusCircleAvatarIcon: 13,
                sizeIcon: 20,
                sizeText: Theme.of(context).textTheme.headline1,
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: AutoSizeText(
                'Quang Nghĩa',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: AutoSizeText(
                '+84989666888',
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
            ),
            AccountItem(
              accountName: l10n.editProfileLabel,
              accountIcon: const Icon(Icons.portrait),
            ),
            AccountItem(
              accountName: l10n.paymentLabel,
              accountIcon: const Icon(Icons.payment),
            ),
            AccountItem(
              accountName: l10n.organizationLabel,
              accountIcon: const Icon(Icons.business),
            ),
            AccountItem(
              accountName: l10n.changePassWordLabel,
              accountIcon: const Icon(Icons.key),
            ),
            AccountItem(
              accountName: l10n.changeLanguageLabel,
              accountIcon:
                  const Icon(IconData(0xe366, fontFamily: 'MaterialIcons')),
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
            ),
            AccountItem(
              accountName: l10n.termsOfServiceLabel,
              accountIcon: const Icon(Icons.fact_check),
            ),
            AccountItem(
              accountName: l10n.aboutUsLabel,
              accountIcon: const Icon(Icons.people),
            ),
            AccountItem(
              accountName: l10n.suportsLabel,
              accountIcon: const Icon(Icons.help),
            ),
            AccountItem(
              accountName: l10n.logoutLabel,
              accountIcon: const Icon(Icons.logout),
            ),
          ],
        ),
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
