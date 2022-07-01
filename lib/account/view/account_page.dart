import 'package:flutter/material.dart';
import 'package:revup/l10n/l10n.dart';

void main() => runApp(const AccountPage());

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});
  @override
  Widget build(BuildContext context) {
    // final theme = Theme.of(context);
    // final textTheme = theme.textTheme;
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
          // child: const CircleAvatar(
          //   radius: 80,
          //   backgroundColor: Color.fromARGB(255, 242, 226, 80),
          //   child: Text(
          //     'N',
          //     style: TextStyle(fontSize: 90, color: Colors.white),
          //   ),
          // ),
          // child: const CircleAvatar(
          //   radius: 40,
          //   backgroundColor: Colors.white,
          child: const CircleAvatar(
            radius: 38,
            backgroundImage: AssetImage('assets/images/user-image-default.png'),
            child: Align(
              alignment: Alignment.bottomRight,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 12,
                child: Icon(
                  Icons.camera_alt,
                  size: 15,
                  color: Color(0xFF404040),
                ),
              ),
            ),
          ),
          // ),
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
            l10n.accountLabel,
          ),
        ),
        ListTile(
          title: Text(l10n.serviceAccountText),
          leading: const Icon(Icons.home_repair_service),
          trailing: IconButton(
            icon: const Icon(Icons.arrow_forward_ios),
            onPressed: () {},
          ),
          onTap: () {},
        ),
        ListTile(
          title: Text(l10n.editProfileText),
          leading: const Icon(Icons.portrait),
          trailing: IconButton(
            icon: const Icon(Icons.arrow_forward_ios),
            onPressed: () {},
          ),
          onTap: () {},
        ),
        ListTile(
          title: Text(l10n.paymentText),
          leading: const Icon(Icons.payment),
          trailing: IconButton(
            icon: const Icon(Icons.arrow_forward_ios),
            onPressed: () {},
          ),
          onTap: () {},
        ),
        ListTile(
          title: Text(l10n.organizationText),
          leading: const Icon(Icons.business),
          trailing: IconButton(
            icon: const Icon(Icons.arrow_forward_ios),
            onPressed: () {},
          ),
          onTap: () {},
        ),
        ListTile(
          title: Text(l10n.changePassWordText),
          leading: const Icon(Icons.key),
          trailing: IconButton(
            icon: const Icon(Icons.arrow_forward_ios),
            onPressed: () {},
          ),
          onTap: () {},
        ),
        ListTile(
          title: Text(l10n.changeLanguageText),
          leading: const Icon(IconData(0xe366, fontFamily: 'MaterialIcons')),
          trailing: IconButton(
            icon: const Icon(Icons.arrow_forward_ios),
            onPressed: () {},
          ),
          onTap: () {},
        ),
        const Divider(
          height: 1,
          thickness: 1,
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            l10n.guideAndSuportLabel,
          ),
        ),
        ListTile(
          title: Text(l10n.faqsText),
          leading: const Icon(Icons.quiz),
          trailing: IconButton(
            icon: const Icon(Icons.arrow_forward_ios),
            onPressed: () {},
          ),
          onTap: () {},
        ),
        ListTile(
          title: Text(l10n.termsOfServiceText),
          leading: const Icon(Icons.fact_check),
          trailing: IconButton(
            icon: const Icon(Icons.arrow_forward_ios),
            onPressed: () {},
          ),
          onTap: () {},
        ),
        ListTile(
          title: Text(l10n.aboutUsText),
          leading: const Icon(Icons.people),
          trailing: IconButton(
            icon: const Icon(Icons.arrow_forward_ios),
            onPressed: () {},
          ),
          onTap: () {},
        ),
        ListTile(
          title: Text(l10n.suportsText),
          leading: const Icon(Icons.help),
          trailing: IconButton(
            icon: const Icon(Icons.arrow_forward_ios),
            onPressed: () {},
          ),
          onTap: () {},
        ),
        ListTile(
          title: Text(l10n.logoutText),
          leading: const Icon(Icons.logout),
          trailing: IconButton(
            icon: const Icon(Icons.arrow_forward_ios),
            onPressed: () {},
          ),
          onTap: () {},
        ),
      ],
    );
  }
}
