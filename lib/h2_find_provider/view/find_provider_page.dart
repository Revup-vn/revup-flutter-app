import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart' hide showSearch;
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../shared/widgets/search_custom.dart';
import '../../l10n/l10n.dart';
import '../cubit/find_provider_cubit.dart';
import '../search/cubit/search_cubit.dart';
import '../search/view/provider_search.dart';
import 'find_provider_view.dart';

class FindProviderPage extends StatelessWidget {
  const FindProviderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) =>
              FindProviderCubit(context.read(), context.read(), context.read()),
        ),
        BlocProvider(
          create: (context) =>
              SearchCubit(context.read(), context.read(), context.read()),
        ),
      ],
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
          actions: [
            Builder(
              builder: (context) => IconButton(
                onPressed: () {
                  showSearch(
                    context: context,
                    delegate: ProviderSearch(
                      searchCubit: BlocProvider.of<SearchCubit>(context),
                      hintText: context.l10n.searchLabel,
                      searchFieldStyle: Theme.of(context).textTheme.bodyMedium,
                    ),
                    useRootNavigator: false,
                  );
                },
                icon: const Icon(Icons.search_rounded),
                iconSize: 24,
              ),
            ),
          ],
        ),
        body: const FindProviderView(),
      ),
    );
  }
}
