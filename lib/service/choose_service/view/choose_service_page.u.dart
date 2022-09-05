import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:revup_core/core.dart';

import '../../../shared/utils.dart';
import '../bloc/choose_service_bloc.u.dart';
import 'choose_service_view.u.dart';

class ChooseServicePage extends StatelessWidget {
  const ChooseServicePage({
    super.key,
    required this.providerId,
    this.recordId,
    required this.optionalService,
  });
  final String providerId;
  final String? recordId;
  final List<OptionalService> optionalService;

  @override
  Widget build(BuildContext context) {
    final sr = context.read<StoreRepository>();
    final mayBeUser = getUser(context.read<AuthenticateBloc>().state);

    return BlocProvider(
      create: (context) => ChooseServiceBloc(
        context.read(),
        context.read(),
        sr,
        providerId,
        mayBeUser,
      ),
      child: ChooseServiceView(
        form: GlobalKey(),
        recordId: recordId,
        providerId: providerId,
        optionalService: optionalService,
      ),
    );
  }
}
