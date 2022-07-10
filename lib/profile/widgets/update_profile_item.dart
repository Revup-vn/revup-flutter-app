import 'package:flutter/material.dart';

import 'package:flutter_form_builder/flutter_form_builder.dart';

class UpdateProfileItem extends StatelessWidget {
  const UpdateProfileItem({
    super.key,
    required this.profileName,
    required this.textType,
    required this.keyName,
  });
  final String profileName;
  final TextInputType textType;
  final String keyName;

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      style: Theme.of(context).textTheme.labelLarge,
      decoration: InputDecoration(
        labelText: profileName,
        labelStyle: Theme.of(context).textTheme.labelLarge,
      ),
      keyboardType: textType,
      name: keyName,
    );
  }
}
