import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart' hide SearchDelegate;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:lottie/lottie.dart';

import '../../../gen/assets.gen.dart';
import '../../../l10n/l10n.dart';
import '../../../shared/widgets/search_custom.dart';
import '../cubit/search_cubit.dart';
import '../widgets/filter_bottom_sheet.dart';
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
  final _radiusFieldKey =
      GlobalKey<FormBuilderFieldState<FormBuilderField<double>, double>>();
  final _priceFieldKey =
      GlobalKey<FormBuilderFieldState<FormBuilderField<String>, String>>();

  @override
  List<Widget>? buildActions(BuildContext context) {
    final l10n = context.l10n;
    final priceFilterOptions = <Tuple2<String, String>>[
      tuple2('asc', l10n.priceAscendingLabel),
      tuple2('desc', l10n.priceDescendingLabel)
    ];
    return [
      IconButton(
        onPressed: () {
          focusNode?.unfocus();
          showModalBottomSheet<String>(
            context: context,
            builder: (context) {
              final filterPriceValue = Hive.box<String>('filter').get('price');
              return FilterBottomSheet(
                radiusFieldKey: _radiusFieldKey,
                priceFieldKey: _priceFieldKey,
                query: query,
                priceFilterOptions: priceFilterOptions,
                filterPriceValue:
                    filterPriceValue ?? priceFilterOptions.first.value2,
              );
            },
          ).then((value) {
            Hive.box<String>('filter')
                .put('price', value ?? priceFilterOptions.first.value2);
          }).whenComplete(() {
            final radius = _radiusFieldKey.currentState?.value ?? 50;
            var priceFilter = '';
            if (_priceFieldKey.currentState?.value?.isNotEmpty ?? false) {
              priceFilter = (priceFilterOptions
                      .where(
                        (e) => e.value2 == (_priceFieldKey.currentState?.value),
                      )
                      .first)
                  .value1;
            }

            searchCubit.searchByKeywordWithinRadius(
              query,
              radius.roundToDouble(),
              priceFilter,
            );
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
    final radius = _radiusFieldKey.currentState?.value ?? 50;
    final priceFilterOptions = <Tuple2<String, String>>[
      tuple2('asc', context.l10n.priceAscendingLabel),
      tuple2('desc', context.l10n.priceDescendingLabel)
    ];
    var priceFilter = '';
    if (_priceFieldKey.currentState?.value?.isNotEmpty ?? false) {
      priceFilter = (priceFilterOptions
              .where(
                (e) => e.value2 == (_priceFieldKey.currentState?.value),
              )
              .first)
          .value1;
    }

    searchCubit.searchByKeywordWithinRadius(
      query,
      radius.roundToDouble(),
      priceFilter,
    );
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
    // final radius = _radiusFieldKey.currentState?.value ?? 50;
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
