import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../l10n/l10n.dart';
import '../../router/app_router.gr.dart';
import '../../shared/widgets/custom_dialog.dart';
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
          return showDialog<void>(
            barrierDismissible: false,
            context: context,
            builder: (bcontext) => SimpleDialogCustom(
              height: 100,
              content: [
                const Center(
                  child: Icon(Icons.done),
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: AutoSizeText(
                    context.l10n.feedbackLabel,
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                ),
              ],
              button: [
                TextButton(
                  onPressed: () {
                    bcontext.router.pop();
                    context.router.popUntil(
                      (route) => route.settings.name == HomeRoute.name,
                    );
                  },
                  child: AutoSizeText(
                    context.l10n.understoodLabel,
                  ),
                ),
              ],
            ),
          );
        },
        orElse: () => false,
      ),
    );
  }
}
