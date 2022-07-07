import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../l10n/l10n.dart';

class AddServiceItem extends StatelessWidget {
  const AddServiceItem({super.key});
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Card(
      child: ListTile(
        leading: const CircleAvatar(
          backgroundColor: Colors.blue,
        ),
        title: const AutoSizeText('Thay phanh'),
        subtitle: const AutoSizeText('Đơn giá: 80.000đ - 1.500.000'),
        trailing: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.add_circle_outline_rounded),
        ),
      ),
    );
  }
}
