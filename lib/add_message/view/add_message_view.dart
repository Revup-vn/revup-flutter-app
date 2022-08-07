import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:image_picker/image_picker.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../../gen/assets.gen.dart';
import '../../l10n/l10n.dart';
import '../../router/router.dart';
import '../../service/image_picker/bloc/image_picker_bloc.dart';
import '../../shared/widgets/unknown_failure.dart';
import '../bloc/add_message_bloc.dart';
import '../models/message_data.dart';

class AddMessageView extends StatefulWidget {
  const AddMessageView({super.key});

  @override
  State<AddMessageView> createState() => _AddMessageViewState();
}

class _AddMessageViewState extends State<AddMessageView> {
  final _formKey = GlobalKey<FormBuilderState>();
  File? _image;
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final bloc = context.watch<AddMessageBloc>();
    bloc.state.whenOrNull(
      initial: () {
        bloc.add(const AddMessageEvent.started());
      },
    );
    final blocImgPicker = context.read<ImagePickerBloc>();
    return BlocBuilder<AddMessageBloc, AddMessageState>(
      builder: (context, state) => state.maybeWhen(
        success: () {
          return Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 28, 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText(
                  l10n.optionalImgGuideLabel,
                  maxLines: 2,
                  style: Theme.of(context).textTheme.caption,
                ),
                const SizedBox(
                  height: 8,
                ),
                AutoSizeText(
                  l10n.optionalLocationImgLabel,
                  maxLines: 1,
                ),
                const SizedBox(
                  height: 8,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                                    title: AutoSizeText(
                                        l10n.imageFromGalleryLabel),
                                    leading:
                                        const Icon(Icons.photo_library_rounded),
                                    onTap: () async {
                                      blocImgPicker.add(
                                        const ImagePickerEvent
                                            .imageUploadSelected(
                                          ImageSource.gallery,
                                        ),
                                      );
                                      await context.router.pop();
                                    },
                                  ),
                                  ListTile(
                                    title:
                                        AutoSizeText(l10n.photoWithCameraLabel),
                                    leading:
                                        const Icon(Icons.camera_alt_rounded),
                                    onTap: () async {
                                      blocImgPicker.add(
                                        const ImagePickerEvent
                                            .imageUploadSelected(
                                          ImageSource.camera,
                                        ),
                                      );
                                      await context.router.pop();
                                    },
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                        child: SizedBox(
                          width: 64,
                          height: 64,
                          child: DottedBorder(
                            color: Theme.of(context).colorScheme.primary,
                            borderType: BorderType.RRect,
                            dashPattern: const [6, 5],
                            radius: const Radius.circular(12),
                            child: Center(
                              child: Assets.screens.addImage.svg(),
                            ),
                          ),
                        ),
                      ),
                      blocImgPicker.state.when(
                        initial: () {
                          return Container();
                        },
                        choosePhotoSuccess: (image) {
                          _image = image;
                          return Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: SizedBox(
                                height: 64,
                                width: 64,
                                child: Image.file(
                                  image,
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 32),
                AutoSizeText(l10n.addMessageTitle),
                const SizedBox(height: 16),
                AutoSizeText(
                  l10n.optionalAddMsgGuideLabel,
                  maxLines: 1,
                  style: Theme.of(context).textTheme.caption,
                ),
                const SizedBox(height: 8),
                FormBuilderTextField(
                  key: _formKey,
                  name: 'desc',
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: l10n.serviceDescriptionLabel,
                  ),
                  keyboardType: TextInputType.multiline,
                  maxLines: 5,
                  maxLength: 100,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState?.saveAndValidate() ?? false) {
                        final desc = _formKey
                                .currentState?.fields['desc']?.value
                                .toString() ??
                            '';
                        context.read<AddMessageBloc>().add(
                              AddMessageEvent.submitted(
                                messageData:
                                    MessageData(_image?.path ?? '', desc),
                              ),
                            );
                        context.router.push(const ChooseServiceRoute());
                      }
                    },
                    style: Theme.of(context).elevatedButtonTheme.style,
                    child: AutoSizeText(l10n.confirmLabel),
                  ),
                ),
              ],
            ),
          );
        },
        failure: UnknownFailure.new,
        orElse: () => const Center(
          child: CircularProgressIndicator.adaptive(),
        ),
      ),
    );
  }
}
