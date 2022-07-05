import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

class LoginSsoItem extends StatelessWidget {
  const LoginSsoItem({super.key, required this.ssoIcon});

  final SvgPicture ssoIcon;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Ink(
          decoration: ShapeDecoration(
            shape: const CircleBorder(),
            color: Theme.of(context).colorScheme.surfaceVariant,
          ),
          child: IconButton(
            icon: ssoIcon,
            onPressed: () {}, // TODO(cantgim): emit login with sso event
          ),
        ),
      ),
    );
  }
}
