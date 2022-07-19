import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/find_list_repairer_bloc.dart';
import '../widgets/list_repairer_main_view.u.dart';

class ListRepairerView extends StatelessWidget {
  const ListRepairerView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FindListRepairerBloc, FindListRepairerState>(
      builder: (context, state) => state.maybeWhen(
        initial: (hasValue) => const ListRepairerMainView(),
        refreshSuccess: (listProvider) => ListRepairerMainView(
          listProvider: listProvider,
        ),
        dropdownListChangedSuccess: (listProvider, sortType) =>
            ListRepairerMainView(
          listProvider: listProvider,
        ),
        orElse: () => const ListRepairerMainView(),
      ),
    );
  }
}
