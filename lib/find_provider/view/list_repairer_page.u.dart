import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../l10n/l10n.dart';
import '../bloc/find_list_repairer_bloc.dart';
import 'list_repairer_view.u.dart';

class ListRepairerPage extends StatelessWidget {
  const ListRepairerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => FindListRepairerBloc(
        context.read(),
        [
          context.l10n.findRepairerErrorMessageLabel,
          context.l10n.emptyRepairerLabel,
        ],
      ),
      child: Scaffold(
        appBar: AppBar(),
        body: const ListRepairerView(),
      ),
    );
  }
}
