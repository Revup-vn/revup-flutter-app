import 'package:flutter/material.dart';

class AccountItem extends StatelessWidget {
  // ignore: lines_longer_than_80_chars
  const AccountItem({
    super.key,
    required this.accountName,
    required this.accountIcon,
  });
  final String accountName;
  final Icon accountIcon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(accountName),
      leading: accountIcon,
      trailing: IconButton(
        icon: const Icon(Icons.arrow_forward_ios),
        onPressed: () {},
      ),
    );
  }
}
