import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class DefaultAvatar extends StatelessWidget {
  const DefaultAvatar({
    super.key,
    required this.avatarSize,
    required this.cameraContainerSize,
    required this.cameraSize,
    required this.textSize,
    required this.userName,
  });
  final double avatarSize;
  final double cameraContainerSize;
  final double cameraSize;
  final TextStyle? textSize;
  final String userName;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: avatarSize,
      backgroundColor: Theme.of(context).colorScheme.primary,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: CircleAvatar(
              backgroundColor: Theme.of(context).colorScheme.onPrimary,
              radius: cameraContainerSize,
              // child: Icon(
              //   Icons.camera_alt,
              //   size: cameraSize,
              //   color: Theme.of(context).colorScheme.onSurfaceVariant,
              // ),
            ),
          ),
          Align(
            child: AutoSizeText(
              userName[0].toUpperCase(),
              style: textSize!
                  .copyWith(color: Theme.of(context).colorScheme.onPrimary),
            ),
          ),
        ],
      ),
    );
  }
}

          //// Shimmer
          // SizedBox(
          //   width: 300,
          //   height: 100,
          //   child: Shimmer.fromColors(
          //     baseColor: Color.fromARGB(255, 116, 114, 113),
          //     highlightColor: Color.fromARGB(255, 189, 186, 165),
          //     child: UserAvatar(
          //         avatarSize: 30,
          //         cameraContainerSize: 0,
          //         cameraSize: 0,
          //         textSize: Theme.of(context).textTheme.titleLarge,
          //         userName: 'userName',
          //         urlImage: urlImage),
          //   ),
          // ),