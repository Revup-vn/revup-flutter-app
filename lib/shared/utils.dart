import 'package:dartz/dartz.dart';
import 'package:revup_core/core.dart';

Option<AppUser> getUser(AuthenticateState state) =>
    state.maybeWhen<Option<AppUser>>(
      authenticated: (authType) => authType.when(
        google: some,
        phone: some,
        email: some,
      ),
      orElse: none,
    );

int calculateMovingFees(int distance, int baseFees, int increaseFees) {
  var movingFees = 0;
  const baseDistance = 3;
  if (distance <= baseDistance) {
    movingFees = baseFees;
  } else {
    movingFees = baseFees + (distance - baseDistance) * increaseFees;
  }
  return movingFees;
}
