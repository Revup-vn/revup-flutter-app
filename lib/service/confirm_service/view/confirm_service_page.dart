import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:revup_core/core.dart';

import '../../../shared/utils.dart';
import '../bloc/confirm_service_bloc.dart';
import '../cubit/select_prod_service_cubit.dart';
import 'confirm_service_view.dart';

class ConfirmServicePage extends StatelessWidget {
  const ConfirmServicePage({
    super.key,
    required this.providerId,
    required this.recordId,
    required this.optionalService,
  });
  final String providerId;
  final String recordId;
  final List<OptionalService> optionalService;

  @override
  Widget build(BuildContext context) {
    final sr = context.read<StoreRepository>();
    final mayBeUser = getUser(context.read<AuthenticateBloc>().state);
    final paymentService = context
        .read<StoreRepository>()
        .repairPaymentRepo(RepairRecordDummy.dummyAccepted(recordId));

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ConfirmServiceBloc(
            context.read(),
            context.read(),
            sr,
            providerId,
            mayBeUser,
          ),
        ),
        BlocProvider(
          create: (context) => SelectProdServiceCubit(
            context.read(),
            context.read(),
            context.read(),
            recordId,
            paymentService,
          ),
        ),
      ],
      child: ConfirmServiceView(
        form: GlobalKey(),
        recordId: recordId,
        providerId: providerId,
        optionalService: optionalService,
      ),
    );
  }
}
