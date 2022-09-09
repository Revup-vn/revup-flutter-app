import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'service_avatar.dart';

class ServiceListTile extends StatelessWidget {
  const ServiceListTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
  });
  final String title;
  final String subtitle;
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ServiceAvatar(
        imageUrl: imageUrl,
        userName: 'Service',
      ),
      title: AutoSizeText(
        title,
        maxLines: 1,
      ),
      subtitle: AutoSizeText(
        subtitle,
        maxLines: 1,
      ),
    );
  }
}
