import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart' hide SearchDelegate;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:lottie/lottie.dart';

import '../../../gen/assets.gen.dart';
import '../../../l10n/l10n.dart';
import '../../../shared/widgets/search_custom.dart';
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
  final _rangeFieldKey =
      GlobalKey<FormBuilderFieldState<FormBuilderField<double>, double>>();

  @override
  List<Widget>? buildActions(BuildContext context) {
    final l10n = context.l10n;
    return [
      IconButton(
        onPressed: () {
          focusNode?.unfocus();
          showModalBottomSheet<int>(
            context: context,
            builder: (context) => Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.background,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              height: 320,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                  bottom: 28,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(
                      height: 8,
                    ),
                    Center(
                      child: AutoSizeText(
                        l10n.filterLabel,
                        style: Theme.of(context).textTheme.titleLarge ??
                            const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                    const Divider(),
                    const SizedBox(
                      height: 8,
                    ),
                    FormBuilderSlider(
                      key: _rangeFieldKey,
                      name: 'range',
                      initialValue: 50,
                      min: 1,
                      max: 50,
                      divisions: 49,
                      decoration: InputDecoration(
                        labelText: '${l10n.radiusLabel} (km)',
                        border: InputBorder.none,
                      ),
                      displayValues: DisplayValues.current,
                      textStyle: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(fontWeight: FontWeight.bold) ??
                          const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    AutoSizeText.rich(
                      TextSpan(
                        text: l10n.noteLabel,
                        children: <TextSpan>[
                          TextSpan(
                            text: ': ${l10n.noteFilterRadiusLabel}',
                            style: Theme.of(context).textTheme.bodySmall,
                          )
                        ],
                        style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(fontWeight: FontWeight.bold) ??
                            const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        _rangeFieldKey.currentState?.save();
                        log(
                          _rangeFieldKey.currentState?.value.toString() ?? '',
                        );
                        await context.router.pop();
                      },
                      child: Text(l10n.filterLabel),
                    )
                  ],
                ),
              ),
            ),
          ).whenComplete(() {
            final radius = _rangeFieldKey.currentState?.value ?? 50;
            searchCubit.searchByKeywordWithinRadius(query, radius);
            log('$query and $radius');
            showResults(context);
          });
        },
        icon: const Icon(Icons.filter_list),
        focusColor: Theme.of(context).colorScheme.primary,
      ),
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
    // focusNode?.unfocus();
    final radius = _rangeFieldKey.currentState?.value ?? 50;
    searchCubit.searchByKeywordWithinRadius(query, radius);
    return BlocBuilder<SearchCubit, SearchState>(
      bloc: searchCubit,
      builder: (context, state) => state.when(
        initial: SearchInitial.new,
        loading: () => Center(
          child: LottieBuilder.asset(Assets.screens.loading),
        ),
        empty: (keyword, resultCount, radius) => SearchEmpty(
          keyword: keyword,
          resultCount: resultCount,
          radius: radius,
        ),
        result: (keyword, resultCount, radius, providers) => SearchResult(
          keyword: keyword,
          resultCount: resultCount,
          providers: providers,
          radius: radius,
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container();
    // final radius = _rangeFieldKey.currentState?.value ?? 50;
    // searchCubit.searchByKeywordWithinRadius(query, radius);

    // return BlocBuilder<SearchCubit, SearchState>(
    //   bloc: searchCubit,
    //   builder: (context, state) => state.when(
    //     initial: SearchInitial.new,
    //     loading: () => Center(
    //       child: LottieBuilder.asset(Assets.screens.loading),
    //     ),
    //     empty: (keyword, resultCount) => SearchEmpty(
    //       keyword: keyword,
    //       resultCount: resultCount,
    //     ),
    //     result: (keyword, resultCount, providers) => SearchResult(
    //       keyword: keyword,
    //       resultCount: resultCount,
    //       providers: providers,
    //     ),
    //   ),
    // );
  }
}
