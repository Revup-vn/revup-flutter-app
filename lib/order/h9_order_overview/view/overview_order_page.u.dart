import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:revup_core/core.dart';

import '../../../l10n/l10n.dart';
import '../bloc/overview_order_bloc.u.dart';
import 'overview_order_view.u.dart';

class OverViewOrderPage extends StatelessWidget {
  const OverViewOrderPage({
    super.key,
    required this.providerId,
    required this.recordId,
  });
  final String providerId;
  final String recordId;
  @override
  Widget build(BuildContext context) {
    final sr = context.read<StoreRepository>();

    return MultiBlocProvider(
      providers: [
        BlocProvider<OverviewOrderBloc>(
          create: (BuildContext context) => OverviewOrderBloc(
            providerId,
            context.read(),
            sr,
            context.read(),
            recordId,
          ),
        ),
      ],
      child: WillPopScope(
        onWillPop: () => Future.value(false),
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            centerTitle: false,
            title: AutoSizeText(
              context.l10n.serviceInforLabel,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          body: const OverViewOrderView(),
        ),
      ),
    );
  }
}
