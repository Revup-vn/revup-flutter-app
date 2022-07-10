// import 'package:flutter/material.dart';

// import 'package:auto_size_text/auto_size_text.dart';

// class CircleAvatarAccount extends StatelessWidget {
//   const CircleAvatarAccount({
//     super.key,
//     required this.radiusCircleAvatar,
//     required this.radiusCircleAvatarIcon,
//     required this.sizeIcon,
//     required this.sizeText,
//     required this.userName,
//     required this.urlImage,
//   });
//   final double radiusCircleAvatar;
//   final double radiusCircleAvatarIcon;
//   final double sizeIcon;
//   final TextStyle? sizeText;
//   final String userName;
//   final String urlImage;

//   @override
//   Widget build(BuildContext context) {
//     return CircleAvatar(
//       radius: radiusCircleAvatar,
//       backgroundColor: Theme.of(context).colorScheme.primary,
//       backgroundImage: NetworkImage(urlImage),
//       child: Stack(
//         children: [
//           Align(
//             alignment: Alignment.bottomRight,
//             child: CircleAvatar(
//               backgroundColor: Theme.of(context).colorScheme.onPrimary,
//               radius: radiusCircleAvatarIcon,
//               child: Icon(
//                 Icons.camera_alt,
//                 size: sizeIcon,
//                 color: Theme.of(context).colorScheme.onSurfaceVariant,
//               ),
//             ),
//           ),
//           Align(
//             child: AutoSizeText(
//               userName[0].toUpperCase(),
//               style: sizeText!
//                   .copyWith(color: Theme.of(context).colorScheme.onPrimary),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({
    super.key,
    required this.avatarSize,
    required this.cameraContainerSize,
    required this.cameraSize,
    required this.textSize,
    required this.userName,
    required this.urlImage,
  });
  final double avatarSize;
  final double cameraContainerSize;
  final double cameraSize;
  final TextStyle? textSize;
  final String userName;
  final String urlImage;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: avatarSize,
      backgroundColor: Theme.of(context).colorScheme.primary,
      backgroundImage: CachedNetworkImageProvider(urlImage),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: CircleAvatar(
              backgroundColor: Theme.of(context).colorScheme.onPrimary,
              radius: cameraContainerSize,
              child: Icon(
                Icons.camera_alt,
                size: cameraSize,
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
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
