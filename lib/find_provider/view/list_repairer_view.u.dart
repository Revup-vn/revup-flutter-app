import 'package:flutter/cupertino.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/find_list_repairer_bloc.dart';
import '../widgets/list_repairer.u.dart';
import '../widgets/list_repairer_failure.dart';
import '../widgets/list_repairer_loading.u.dart';

class ListRepairerView extends StatelessWidget {
  const ListRepairerView({super.key});

  @override
  Widget build(BuildContext context) {
    context.watch<FindListRepairerBloc>().state.maybeWhen(
          initial: (hasValue) {
            return context
                .read<FindListRepairerBloc>()
                .add(const FindListRepairerEvent.started());
          },
          orElse: () => false,
        );

    return BlocBuilder<FindListRepairerBloc, FindListRepairerState>(
      builder: (context, state) => state.when(
        dataLoadSuccess: (listProvider) =>
            ListRepairer.def(listProvider: listProvider),
        refreshSuccess: (listProvider) => ListRepairer.def(
          listProvider: listProvider,
        ),
        dropdownListChangedSuccess: (listProvider, sortType) => ListRepairer(
          listProvider: listProvider,
          sortType: sortType,
        ),
        initial: (_) => Container(),
        loading: () => const ListRepairerLoading(),
        failure: ListRepairerLoadDataFailure.new,
      ),
    );
  }
}
