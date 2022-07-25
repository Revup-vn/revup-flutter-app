import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../../../gen/assets.gen.dart';
import '../../../l10n/l10n.dart';
import '../../models/service_data.dart';
import '../bloc/new_service_bloc.u.dart';

class NewServiceRequestView extends StatefulWidget {
  const NewServiceRequestView({super.key});

  @override
  State<NewServiceRequestView> createState() => _NewServiceRequestViewState();
}

class _NewServiceRequestViewState extends State<NewServiceRequestView> {
  final _formKey = GlobalKey<FormBuilderState>();
  late File? _image;
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
                    final bloc = BlocProvider.of<NewServiceBloc>(context);
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
                                bloc.add(
                                  const NewServiceEvent
                                      .imageFromGallerySelected(),
                                );
                                context.router.pop();
                              },
                            ),
                            ListTile(
                              title: AutoSizeText(l10n.photoWithCameraLabel),
                              leading: const Icon(Icons.camera_alt_rounded),
                              onTap: () {
                                bloc.add(
                                  const NewServiceEvent
                                      .photoWithCameraSelected(),
                                );
                                context.router.pop();
                              },
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  child: BlocConsumer<NewServiceBloc, NewServiceState>(
                    listener: (context, state) => state.mapOrNull(
                      success: (value) =>
                          context.router.pop<ServiceData>(value.serviceData),
                    ),
                    builder: (context, state) {
                      return state.maybeWhen(
                        choosePhotoSuccess: (image) {
                          _image = image;

                          return SizedBox(
                            height: 120,
                            child: Image.file(
                              image,
                              fit: BoxFit.fitHeight,
                            ),
                          );
                        },
                        orElse: () {
                          return SizedBox(
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
                                          ?.copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
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
                  key: _formKey,
                  child: Column(
                    children: [
                      FormBuilderTextField(
                        name: 'name',
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          labelText: l10n.serviceNameLabel,
                        ),
                        validator: FormBuilderValidators.required(
                          errorText: 'Vui lòng nhập trường này',
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      FormBuilderTextField(
                        name: 'desc',
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
                  if (_formKey.currentState?.saveAndValidate() ?? false) {
                    final name = _formKey.currentState?.fields['name']!.value
                            .toString() ??
                        '';
                    final desc = _formKey.currentState?.fields['desc']!.value
                            .toString() ??
                        '';
                    context.read<NewServiceBloc>().add(
                          NewServiceEvent.submitted(
                            ServiceData(
                              id: '99',
                              name: name,
                              isSelected: true,
                              desc: desc,
                              imageUrl: _image!.path,
                            ),
                          ),
                        );
                  }
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
