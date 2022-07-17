import 'package:auto_size_text/auto_size_text.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../../gen/assets.gen.dart';
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
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 28),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 120,
              child: DottedBorder(
                color: Theme.of(context).colorScheme.primary,
                borderType: BorderType.RRect,
                dashPattern: const [6, 5],
                radius: const Radius.circular(12),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Assets.screens.addImage.svg(),
                      const SizedBox(
                        height: 8,
                      ),
                      AutoSizeText(
                        l10n.chooseImageLabel,
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            AutoSizeText(
              l10n.chooseImageNoteLabel,
              style: Theme.of(context).textTheme.caption,
            ),
            const SizedBox(
              height: 16,
            ),
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
                  const SizedBox(
                    height: 16,
                  ),
                  FormBuilderTextField(
                    name: 'description',
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      labelText: l10n.serviceDescriptionLabel,
                    ),
                    keyboardType: TextInputType.multiline,
                    maxLines: 5,
                    validator: FormBuilderValidators.max(100),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
