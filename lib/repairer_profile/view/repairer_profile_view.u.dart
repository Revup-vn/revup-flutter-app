import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../shared/widgets/loading.u.dart';
import '../bloc/repairer_profile_bloc.dart';
import '../widgets/repairer_failure.u.dart';
import '../widgets/repairer_profile_content.u.dart';

class RepairerProfileView extends StatelessWidget {
  const RepairerProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    context.watch<RepairerProfileBloc>().state.maybeWhen(
          initial: () {
            return context
                .read<RepairerProfileBloc>()
                .add(const RepairerProfileEvent.started());
          },
          orElse: () => false,
        );

    return BlocBuilder<RepairerProfileBloc, RepairerProfileState>(
      builder: (context, state) => state.when(
        initial: Loading.new,
        dataLoadSuccess: RepairerProfileMainContent.new,
        dataLoadFailure: () => const RepairerLoadDataFailure(),
        loading: Loading.new,
      ),
    );
  }
}
