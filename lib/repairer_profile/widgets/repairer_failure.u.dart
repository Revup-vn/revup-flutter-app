import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';

class RepairerLoadDataFailure extends StatelessWidget {
  const RepairerLoadDataFailure({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: const [
          Icon(Icons.refresh),
          AutoSizeText('Some thing went wrong, please reload or refresh page'),
        ],
      ),
    );
  }
}
