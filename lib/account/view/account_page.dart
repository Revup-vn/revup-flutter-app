import 'package:flutter/material.dart';
import 'package:revup/account/widgets/account_item.dart';
import 'package:revup/l10n/l10n.dart';
import '../widgets/circle_avatar.dart';

void main() => runApp(const AccountPage());

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return MaterialApp(
      home: Scaffold(
        body: _buildListView(context),
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
            )
          ],
          onTap: (int index) {},
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }

  ListView _buildListView(BuildContext context) {
    final l10n = context.l10n;
    return ListView(
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.fromLTRB(10, 60, 10, 10),
          child: const CircleAvatarAccount(
            radiusCircleAvatar: 60,
            radiusCircleAvatarIcon: 13,
            sizeIcon: 20,
            sizeText: 70,
          ),
        ),
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10),
          child: Text(
            l10n.nameAccountText,
            style: const TextStyle(fontSize: 30),
          ),
        ),
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10),
          child: Text(
            l10n.phoneText,
            style: const TextStyle(fontSize: 18),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            l10n.accountText,
          ),
        ),
        AccountItem(
          accountName: l10n.serviceAccountText,
          accountIcon: const Icon(Icons.home_repair_service),
        ),
        AccountItem(
          accountName: l10n.editProfileText,
          accountIcon: const Icon(Icons.portrait),
        ),
        AccountItem(
          accountName: l10n.paymentText,
          accountIcon: const Icon(Icons.payment),
        ),
        AccountItem(
          accountName: l10n.organizationText,
          accountIcon: const Icon(Icons.business),
        ),
        AccountItem(
          accountName: l10n.changePassWordText,
          accountIcon: const Icon(Icons.key),
        ),
        AccountItem(
          accountName: l10n.changeLanguageText,
          accountIcon:
              const Icon(IconData(0xe366, fontFamily: 'MaterialIcons')),
        ),
        const Divider(
          height: 1,
          thickness: 1,
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            l10n.guideAndSuportText,
          ),
        ),
        AccountItem(
          accountName: l10n.faqsText,
          accountIcon: const Icon(Icons.quiz),
        ),
        AccountItem(
          accountName: l10n.termsOfServiceText,
          accountIcon: const Icon(Icons.fact_check),
        ),
        AccountItem(
          accountName: l10n.aboutUsText,
          accountIcon: const Icon(Icons.people),
        ),
        AccountItem(
          accountName: l10n.suportsText,
          accountIcon: const Icon(Icons.help),
        ),
        AccountItem(
          accountName: l10n.logoutText,
          accountIcon: const Icon(Icons.logout),
        ),
      ],
    );
  }
}
