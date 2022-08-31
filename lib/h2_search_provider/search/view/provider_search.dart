import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

import '../cubit/search_cubit.dart';
import '../widgets/search_empty.dart';
import '../widgets/search_initial.dart';
import '../widgets/search_result.dart';

class ProviderSearch extends SearchDelegate<String> {
  ProviderSearch({
    required this.searchCubit,
    required String hintText,
    required super.searchFieldStyle,
  }) : super(
          searchFieldLabel: hintText,
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.search,
        );
  final SearchCubit searchCubit;

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.filter_list),
        focusColor: Theme.of(context).colorScheme.primary,
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, '');
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    if (query != '') searchCubit.searchByKeywordWithinRadius(50, query);
    return BlocBuilder<SearchCubit, SearchState>(
      bloc: searchCubit,
      builder: (context, state) => state.when(
        initial: SearchInitial.new,
        loading: () => Shimmer.fromColors(
          baseColor: const Color.fromRGBO(224, 224, 224, 1),
          highlightColor: const Color.fromRGBO(245, 245, 245, 1),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 10,
          ),
        ),
        empty: (keyword, resultCount) => SearchEmpty(
          keyword: keyword,
          resultCount: resultCount,
        ),
        result: (keyword, resultCount, providers) => SearchResult(
          keyword: keyword,
          resultCount: resultCount,
          providers: providers,
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container();
  }
}
