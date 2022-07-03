import 'package:flutter/material.dart';

class CircleAvatarAccount extends StatelessWidget {
  const CircleAvatarAccount({
    super.key,
    required this.radiusCircleAvatar,
    required this.radiusCircleAvatarIcon,
    required this.sizeIcon,
    required this.sizeText,
  });
  final double radiusCircleAvatar;
  final double radiusCircleAvatarIcon;
  final double sizeIcon;
  final double sizeText;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radiusCircleAvatar,
      backgroundColor: const Color.fromARGB(255, 242, 226, 80),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: radiusCircleAvatarIcon,
              child: Icon(
                Icons.camera_alt,
                size: sizeIcon,
                color: const Color(0xFF404040),
              ),
            ),
          ),
          Align(
            child: Text(
              'N',
              style: TextStyle(fontSize: sizeText, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
