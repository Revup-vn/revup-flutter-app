import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:revup_core/core.dart';

import '../../router/app_router.gr.dart';
import '../../shared/widgets/loading.u.dart';
import '../bloc/bloc/signup_bloc.dart';
import '../bloc/upload_bloc.u.dart';
import 'signup_builder.dart';

class SignupPage extends StatelessWidget {
  const SignupPage(
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => UploadBloc(ImagePicker()),
        ),
        BlocProvider(
          create: (context) => SignupBloc(context.read()),
        ),
      ],
      child: BlocConsumer<SignupBloc, SignupState>(
        builder: (context, state) => state.when(
          initial: () =>
              SignupBuilder(completer, phoneNumber, photoURL, uid, email),
          loading: Loading.new,
          success: Container.new,
        ),
        listener: (context, state) => state.whenOrNull(
          success: () => context.router
              .popUntil((route) => route.settings.name == LoginRoute.name),
        ),
      ),
    );
  }
}
