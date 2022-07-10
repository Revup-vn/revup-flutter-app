import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';

class AccountItem extends StatelessWidget {
  // ignore: lines_longer_than_80_chars
  const AccountItem({
    super.key,
    required this.accountName,
    required this.accountIcon,
    required this.clickCallback,
  });
  final String accountName;
  final Icon accountIcon;
  final VoidCallback clickCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: AutoSizeText(
        accountName,
        style: Theme.of(context).textTheme.titleMedium,
      ),
      leading: accountIcon,
      trailing: IconButton(
        icon: const Icon(Icons.arrow_forward_ios),
        onPressed: clickCallback, // TODO(namngoc231): implement on press
      ),
    );
  }
}
