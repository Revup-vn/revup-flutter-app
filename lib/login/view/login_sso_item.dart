import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

class LoginSsoItem extends StatelessWidget {
  const LoginSsoItem({super.key, this.ssoIcon, this.onPressedCb});
  final SvgPicture? ssoIcon;
  final VoidCallback? onPressedCb;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Ink(
        decoration: ShapeDecoration(
          shape: const CircleBorder(),
          color: Theme.of(context).colorScheme.surfaceVariant,
        ),
        child: IconButton(
          icon: ssoIcon ??
              const Icon(IconData(0xf80c, fontFamily: 'MaterialIcons')),
          onPressed: onPressedCb, // TODO(cantgim): emit login with sso event
        ),
      ),
    );
  }
}
