import 'package:flutter/material.dart';
import 'package:loader_overlay/loader_overlay.dart';

class LoginLoading extends StatelessWidget {
  const LoginLoading({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return LoaderOverlay(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.zero,
            child: const SizedBox(),
          )
        ],
      ),
    );
  }
}
