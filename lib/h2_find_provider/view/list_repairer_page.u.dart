import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../l10n/l10n.dart';
import '../bloc/find_list_repairer_bloc.u.dart';
import 'list_repairer_view.u.dart';

class ListRepairerPage extends StatelessWidget {
  const ListRepairerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => FindListRepairerBloc(
        context.read(),
        context.read(),
        [
          context.l10n.findRepairerErrorMessageLabel,
          context.l10n.emptyRepairerLabel,
        ],
      ),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: AutoSizeText(
            context.l10n.repairerAroundLabel,
            maxLines: 1,
          ),
          titleTextStyle: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        body: const ListRepairerView(),
      ),
    );
  }
}
