import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../l10n/l10n.dart';
import '../../shared/widgets/loading.u.dart';
import '../bloc/add_report_bloc.dart';
import 'add_report_view.u.dart';

class AddReportBuilder extends StatelessWidget {
  const AddReportBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddReportBloc, AddReportState>(
      builder: (context, state) => state.when(
        initial: AddReportView.new,
        failure: AddReportView.new,
        loading: Loading.new,
        success: Container.new,
      ),
      listener: (context, state) => state.maybeWhen(
        orElse: () => false,
        success: () {
          showDialog<String>(
            barrierDismissible: false,
            context: context,
            builder: (context) {
              return Dialog(
                backgroundColor: Colors.transparent,
                insetPadding: const EdgeInsets.all(10),
                child: Stack(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 200,
                      child: Column(
                        children: [
                          Icon(
                            Icons.done,
                            color: Theme.of(context).colorScheme.onTertiary,
                          ),
                          AutoSizeText(
                            context.l10n.doneLabel,
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                ?.copyWith(
                                  color:
                                      Theme.of(context).colorScheme.onTertiary,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          );
          return Future.delayed(const Duration(seconds: 3), () {
            var count = 0;
            context.router.popUntil((_) => count++ == 2);
          });
        },
        failure: () {
          showDialog<String>(
            barrierDismissible: false,
            context: context,
            builder: (context) {
              return Dialog(
                backgroundColor: Colors.transparent,
                insetPadding: const EdgeInsets.all(10),
                child: Stack(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 200,
                      child: Column(
                        children: [
                          Icon(
                            Icons.cancel,
                            color: Theme.of(context).colorScheme.error,
                          ),
                          AutoSizeText(
                            context.l10n.doneLabel,
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                ?.copyWith(
                                  color: Theme.of(context).colorScheme.error,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          );
          return Future.delayed(const Duration(seconds: 3), () {
            var count = 0;
            context.router.popUntil((_) => count++ == 1);
          });
        },
      ),
    );
  }
}
