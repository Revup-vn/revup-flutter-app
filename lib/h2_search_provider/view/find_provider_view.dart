import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../shared/widgets/loading.u.dart';
import '../cubit/find_provider_cubit.dart';
import '../widgets/find_provider_empty.dart';
import '../widgets/find_provider_failure.dart';
import '../widgets/find_provider_loaded.dart';

class FindProviderView extends StatelessWidget {
  const FindProviderView({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<FindProviderCubit>();
    cubit.state.maybeWhen(
      orElse: () => false,
      initial: () => cubit.watchWithinRadius(50),
    );
    return BlocBuilder<FindProviderCubit, FindProviderState>(
      builder: (_, state) => state.when(
        initial: Container.new,
        loading: Loading.new,
        empty: FindProviderEmpty.new,
        failure: FindProviderFailure.new,
        loaded: (providers) => FindProviderLoaded(providers: providers),
      ),
    );
  }
}
