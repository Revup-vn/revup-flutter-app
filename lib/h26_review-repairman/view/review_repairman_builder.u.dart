import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../l10n/l10n.dart';
import '../../shared/widgets/loading.u.dart';
import '../../shared/widgets/unknown_failure.dart';
import '../bloc/review_repairman_bloc.u.dart';
import 'review_repairman_view.u.dart';

class ReviewRepairmanBuilder extends StatelessWidget {
  const ReviewRepairmanBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ReviewRepairmanBloc, ReviewRepairmanState>(
      builder: (context, state) => state.maybeMap(
        failure: (value) => const Scaffold(body: UnknownFailure()),
        orElse: Container.new,
        loading: (value) => const Loading(),
        loadDataSuccess: (value) => ReviewRepairmanView(value.data),
      ),
      listener: (context, state) => state.maybeMap(
        success: (value) async {
          unawaited(
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
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onTertiary,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          );
          return Future.delayed(
            const Duration(seconds: 3),
            () async {
              return context.router.pop();
            },
          );
        },
        orElse: () => false,
      ),
    );
  }
}
