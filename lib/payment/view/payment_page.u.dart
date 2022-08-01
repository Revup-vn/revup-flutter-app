import 'package:flutter/material.dart';

import 'package:revup_core/core.dart';

import '../../account/model/user_model.dart';
import 'payment_view.u.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key, required this.user, required this.model});
  final UserModel user;
  final AppUser model;
  @override
  Widget build(BuildContext context) {
    return PaymentView(user: user, model: model);
  }
}
