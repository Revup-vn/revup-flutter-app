import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../l10n/l10n.dart';
import '../../shared/widgets/loading.u.dart';
import '../bloc/report_bloc.dart';
import '../widgets/report_item.u.dart';

class ReportView extends StatelessWidget {
  const ReportView({super.key});
  @override
  Widget build(BuildContext context) {
    context.watch<ReportBloc>().state.maybeWhen(
          initial: () {
            return context.read<ReportBloc>().add(const ReportEvent.started());
          },
          orElse: () => false,
        );
    final l10n = context.l10n;
    final listColor = <Color>[
      Theme.of(context).colorScheme.primary,
      Theme.of(context).colorScheme.tertiary,
      Theme.of(context).colorScheme.error,
    ];
    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText(
          l10n.reportLabel,
          style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(fontWeight: FontWeight.bold) ??
              const TextStyle(
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 40, 16, 0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              BlocBuilder<ReportBloc, ReportState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: Container.new,
                    loading: Loading.new,
                    success: (models) => ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: models.length,
                      itemBuilder: (context, index) => ReportItem(
                        data: models[index],
                        textColor: listColor[models[index].status],
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 150,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
