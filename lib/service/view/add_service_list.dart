import 'package:flutter/material.dart';

import '../../l10n/l10n.dart';
import 'add_service_item.dart';

class AddServiceList extends StatelessWidget {
  const AddServiceList({super.key});
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Expanded(
      child: ListView(
        children: const [
          AddServiceItem(),
          AddServiceItem(),
          AddServiceItem(),
          AddServiceItem(),
          AddServiceItem(),
          AddServiceItem(),
          AddServiceItem(),
          AddServiceItem(),
          AddServiceItem(),
          AddServiceItem(),
        ],
      ),
    );
  }
}
