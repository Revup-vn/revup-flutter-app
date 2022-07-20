import 'package:auto_size_text/auto_size_text.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../../choose-service/bloc/choose_service_bloc.dart';
import '../../gen/assets.gen.dart';
import '../../l10n/l10n.dart';
import '../bloc/new_service_bloc.dart';

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
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    showMaterialModalBottomSheet<Widget>(
                      context: context,
                      builder: (context) => SafeArea(
                        top: false,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ListTile(
                              title: AutoSizeText(l10n.imageFromGalleryLabel),
                              leading: const Icon(Icons.photo_library_rounded),
                              onTap: () {
                                BlocProvider.of<NewServiceBloc>(context).add(
                                  const NewServiceEvent
                                      .imageFromGallerySelected(),
                                );
                              },
                            ),
                            ListTile(
                              title: AutoSizeText(l10n.photoWithCameraLabel),
                              leading: const Icon(Icons.camera_alt_rounded),
                              onTap: () {
                                BlocProvider.of<NewServiceBloc>(context).add(
                                  const NewServiceEvent
                                      .photoWithCameraSelected(),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  child: SizedBox(
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
          Positioned(
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.all(16),
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () {
                  context
                      .read<ChooseServiceBloc>()
                      .add(const ChooseServiceEvent.newServiceRequested());
                },
                style: Theme.of(context).elevatedButtonTheme.style,
                child: AutoSizeText(l10n.confirmLabel),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
