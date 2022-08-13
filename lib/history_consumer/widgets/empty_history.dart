import 'package:flutter/material.dart';

import '../../l10n/l10n.dart';

class EmptyHistory extends StatelessWidget {
  const EmptyHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(context.l10n.emptyHistoryLabel),
    );
  }
}
