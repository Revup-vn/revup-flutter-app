import 'package:dartz/dartz.dart';
import 'package:revup_core/core.dart';

Option<AppUser> getUser(AuthenticateState state) =>
    state.maybeWhen<Option<AppUser>>(
      authenticated: (authType) => authType.when(
        google: some,
        phone: some,
      ),
      orElse: none,
    );
