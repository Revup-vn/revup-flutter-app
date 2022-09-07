import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:revup_core/core.dart';

import '../../../shared/utils.dart';
import '../bloc/choose_service_bloc.u.dart';
import '../cubit/payment_cubit.dart';
import 'choose_service_view.u.dart';

class ChooseServicePage extends StatelessWidget {
  const ChooseServicePage({
    super.key,
    required this.providerId,
    required this.optionalService,
  });
  final String providerId;
  final List<OptionalService> optionalService;

  @override
  Widget build(BuildContext context) {
    final sr = context.read<StoreRepository>();
    final mayBeUser = getUser(context.read<AuthenticateBloc>().state);

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ChooseServiceBloc(
            context.read(),
            context.read(),
            sr,
            providerId,
            mayBeUser,
            context.read(),
          ),
        ),
        BlocProvider(
          create: (context) => PaymentCubit(
            context.read(),
            context.read(),
            context.read(),
            context.read(),
            providerId,
          ),
        ),
      ],
      child: ChooseServiceView(
        form: GlobalKey(),
        providerId: providerId,
        optionalService: optionalService,
      ),
    );
  }
}
