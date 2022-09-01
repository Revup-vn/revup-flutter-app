import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../../l10n/l10n.dart';

class FormSlider extends StatefulWidget {
  const FormSlider({super.key, required this.formKey});
  final GlobalKey<FormBuilderFieldState<FormBuilderField<double>, double>>
      formKey;

  @override
  State<FormSlider> createState() => _FormSliderState();
}

class _FormSliderState extends State<FormSlider> {
  double? _value = 50;
  @override
  Widget build(BuildContext context) {
    return FormBuilderSlider(
      key: widget.formKey,
      name: 'radius',
      initialValue: _value ?? 50,
      min: 1,
      max: 50,
      label: _value?.round().toString() ?? '50',
      divisions: 49,
      onChanged: (v) {
        setState(() {
          _value = v;
        });
      },
      decoration: InputDecoration(
        labelText: '${context.l10n.radiusLabel} (km)',
        border: InputBorder.none,
      ),
      displayValues: DisplayValues.none,
      textStyle: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(fontWeight: FontWeight.bold) ??
          const TextStyle(fontWeight: FontWeight.bold),
    );
  }
}
