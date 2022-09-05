import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:dartz/dartz.dart' hide State;
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../../l10n/l10n.dart';
import 'form_slider.dart';

class FilterBottomSheet extends StatefulWidget {
  const FilterBottomSheet({
    super.key,
    required this.radiusFieldKey,
    required this.priceFieldKey,
    required this.query,
    required this.priceFilterOptions,
    required this.filterPriceValue,
  });
  final GlobalKey<FormBuilderFieldState<FormBuilderField<double>, double>>
      radiusFieldKey;
  final GlobalKey<FormBuilderFieldState<FormBuilderField<String>, String>>
      priceFieldKey;
  final String query;
  final List<Tuple2<String, String>> priceFilterOptions;
  final String filterPriceValue;

  @override
  State<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  late String filterPrice;
  @override
  void initState() {
    super.initState();
    filterPrice = widget.filterPriceValue;
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      height: 360,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
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
                FormBuilderChoiceChip(
                  enabled: widget.query.isNotEmpty,
                  key: widget.priceFieldKey,
                  initialValue: filterPrice,
                  name: 'price',
                  options: widget.priceFilterOptions
                      .map(
                        (e) => FormBuilderChipOption<String>(
                          key: Key(e.value1),
                          value: e.value2,
                        ),
                      )
                      .toList(growable: false),
                  spacing: 8,
                  onChanged: (String? value) {
                    filterPrice =
                        value ?? widget.priceFilterOptions.first.value2;
                  },
                  decoration: InputDecoration(
                    labelText: l10n.servicePriceLabel,
                    border: InputBorder.none,
                  ),
                  padding: EdgeInsets.zero,
                ),
                FormSlider(formKey: widget.radiusFieldKey),
                AutoSizeText.rich(
                  TextSpan(
                    text: l10n.noteLabel,
                    children: <TextSpan>[
                      TextSpan(
                        text: ': ${l10n.noteFilterRadiusLabel}',
                        style: const TextStyle(fontWeight: FontWeight.normal),
                      )
                    ],
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  maxLines: 2,
                  minFontSize: 10,
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              widget.radiusFieldKey.currentState?.save();
              widget.priceFieldKey.currentState?.save();
              await context.router.pop<String>(filterPrice);
            },
            child: Text(l10n.filterLabel),
          )
        ],
      ),
    );
  }
}
