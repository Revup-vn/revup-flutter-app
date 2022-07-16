import 'dart:math';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../l10n/l10n.dart';

class NewServiceRequestView extends StatelessWidget {
  const NewServiceRequestView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText(l10n.newRequestServiceAppBarTitle),
        centerTitle: false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FormBuilder(
            child: Column(
              children: [
                FormBuilderTextField(
                  name: 'name',
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: l10n.serviceNameLabel,
                  ),
                ),
                FormBuilderTextField(
                  name: 'description',
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: l10n.serviceDescriptionLabel,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
