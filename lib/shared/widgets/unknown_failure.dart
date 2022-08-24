import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class UnknownFailure extends StatelessWidget {
  const UnknownFailure({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child:
          AutoSizeText('Some thing went wrong, please reload or refresh page'),
    );
  }
}
