import 'dart:async';

import 'package:flutter/material.dart';

import 'package:revup_core/core.dart';

import 'signup_view.dart';

class SignupBuilder extends StatelessWidget {
  const SignupBuilder(
    this.completer,
    this.phoneNumber,
    this.photoURL,
    this.uid,
    this.email, {
    super.key,
  });
  final Completer<AppUser> completer;
  final String phoneNumber;
  final String photoURL;
  final String uid;
  final String email;
  @override
  Widget build(BuildContext context) {
    return SignupView(completer, phoneNumber, photoURL, uid, email);
  }
}
