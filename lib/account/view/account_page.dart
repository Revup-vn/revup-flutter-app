import 'package:flutter/material.dart';
import 'package:revup/l10n/l10n.dart';

void main() => runApp(const AccountPage());

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return MaterialApp(
      home: Scaffold(
        body: _buildListView(context),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Trang chủ',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.restore),
              label: 'Hoạt động',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Thông báo',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Tài khoản',
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
          child: CircleAvatar(
            radius: 80,
            backgroundColor: Color.fromARGB(255, 242, 226, 80),
            child: Text(
              'N',
              style: TextStyle(fontSize: 90, color: Colors.white),
            ),
          ),
        ),
        Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: Text(
              l10n.nameAccountTxt,
              style: TextStyle(fontSize: 30),
            )),
        Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: Text(
              l10n.phoneTxt,
              style: TextStyle(fontSize: 18),
            )),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            l10n.accountLb,
          ),
        ),
        ListTile(
          title: Text(l10n.serviceAccountTxt),
          leading: Icon(Icons.home_repair_service),
          trailing:
              IconButton(icon: Icon(Icons.arrow_forward_ios), onPressed: () {}),
          onTap: () {},
        ),
        ListTile(
          title: Text(l10n.editProfileTxt),
          leading: Icon(Icons.portrait),
          trailing:
              IconButton(icon: Icon(Icons.arrow_forward_ios), onPressed: () {}),
          onTap: () {},
        ),
        ListTile(
          title: Text(l10n.paymentTxt),
          leading: Icon(Icons.payment),
          trailing:
              IconButton(icon: Icon(Icons.arrow_forward_ios), onPressed: () {}),
          onTap: () {},
        ),
        ListTile(
          title: Text(l10n.organizationTxt),
          leading: Icon(Icons.business),
          trailing:
              IconButton(icon: Icon(Icons.arrow_forward_ios), onPressed: () {}),
          onTap: () {},
        ),
        ListTile(
          title: Text(l10n.changePassWordTxt),
          leading: Icon(Icons.key),
          trailing:
              IconButton(icon: Icon(Icons.arrow_forward_ios), onPressed: () {}),
          onTap: () {},
        ),
        ListTile(
          title: Text(l10n.changeLanguageTxt),
          leading: Icon(Icons.change_history),
          trailing:
              IconButton(icon: Icon(Icons.arrow_forward_ios), onPressed: () {}),
          onTap: () {},
        ),
        Divider(
          height: 1,
          thickness: 1,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            l10n.guideAndSuportLb,
          ),
        ),
        ListTile(
          title: Text(l10n.faqsTxt),
          leading: Icon(Icons.quiz),
          trailing:
              IconButton(icon: Icon(Icons.arrow_forward_ios), onPressed: () {}),
          onTap: () {},
        ),
        ListTile(
          title: Text(l10n.termsOfServiceTxt),
          leading: Icon(Icons.fact_check),
          trailing:
              IconButton(icon: Icon(Icons.arrow_forward_ios), onPressed: () {}),
          onTap: () {},
        ),
        ListTile(
          title: Text(l10n.aboutUsTxt),
          leading: Icon(Icons.people),
          trailing:
              IconButton(icon: Icon(Icons.arrow_forward_ios), onPressed: () {}),
          onTap: () {},
        ),
        ListTile(
          title: Text(l10n.suportsTxt),
          leading: Icon(Icons.help),
          trailing:
              IconButton(icon: Icon(Icons.arrow_forward_ios), onPressed: () {}),
          onTap: () {},
        ),
        ListTile(
          title: Text(l10n.logoutTxt),
          leading: Icon(Icons.logout),
          trailing:
              IconButton(icon: Icon(Icons.arrow_forward_ios), onPressed: () {}),
          onTap: () {},
        ),
      ],
    );
  }
}
