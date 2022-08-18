import 'package:flutter/material.dart';
import 'package:revup_core/core.dart';

import 'update_profile_view.u.dart';

class UpdateProfilePage extends StatelessWidget {
  const UpdateProfilePage({
    super.key,
    required this.user,
  });
  final AppUser user;
  @override
  Widget build(BuildContext context) {
    return UpdateProfileView(user: user);
  }
}
