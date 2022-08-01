import 'package:flutter/material.dart';

import 'package:revup_core/core.dart';

import '../../account/model/user_model.dart';
import 'update_profile_view.u.dart';

class UpdateProfilePage extends StatelessWidget {
  const UpdateProfilePage({super.key, required this.user, required this.model});
  final UserModel user;
  final AppUser model;
  @override
  Widget build(BuildContext context) {
    return UpdateProfileView(user: user, model: model);
  }
}
