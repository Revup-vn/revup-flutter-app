import 'dart:async';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:revup_core/core.dart';

import '../../account/widgets/avatar.dart';
import '../../l10n/l10n.dart';
import '../../shared/widgets/dismiss_keyboard.dart';
import '../bloc/bloc/upload_image_bloc.dart';
import '../bloc/profile_bloc.dart';
import '../cubit/upload_image_cubit.u.dart';

class UpdateProfileView extends StatelessWidget {
  const UpdateProfileView({
    super.key,
    required this.user,
  });
  final AppUser user;
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final cubit = context.watch<UploadImageCubit>();
    final _formKey = GlobalKey<FormBuilderState>();
    var storageFile = StorageFile.profile(file: File(''));
    return DismissKeyboard(
      child: LoaderOverlay(
        child: Scaffold(
          appBar: AppBar(
            title: AutoSizeText(
              l10n.editProfileLabel,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          body: ListView(
            children: <Widget>[
              BlocBuilder<UploadImageBloc, UploadImageState>(
                builder: (context, state) => state.when(
                  initial: () => Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.fromLTRB(16, 30, 16, 16),
                    child: Avatar(
                      fileImg: File(''),
                      userName: '${user.firstName} ${user.lastName}',
                      imageUrl: user.avatarUrl,
                      callback: () {
                        _showModalButtonSheet(context);
                      },
                    ),
                  ),
                  choosePhotoSuccess: (file) {
                    storageFile = StorageFile.profile(file: file);
                    return Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.fromLTRB(16, 30, 16, 16),
                      child: Avatar(
                        fileImg: file,
                        userName: '${user.firstName} ${user.lastName}',
                        imageUrl: user.avatarUrl,
                        callback: () {
                          _showModalButtonSheet(context);
                        },
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: FormBuilder(
                  autovalidateMode: AutovalidateMode.disabled,
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      FormBuilderTextField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        style: Theme.of(context).textTheme.labelLarge,
                        decoration: InputDecoration(
                          labelText: l10n.fullNameLabel,
                          labelStyle: Theme.of(context)
                                  .textTheme
                                  .labelLarge
                                  ?.copyWith(fontWeight: FontWeight.bold) ??
                              const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        keyboardType: TextInputType.text,
                        name: 'fullName',
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(
                            errorText: l10n.emptyLabel,
                          ),
                          FormBuilderValidators.match(
                            r'^[a-zA-Z ]+$',
                            errorText: l10n.invalidFormatLabel,
                          ),
                        ]),
                        //initialValue: '${user.firstName} ${user.lastName}',
                        initialValue: '${user.firstName} ${user.lastName}',
                      ),
                      FormBuilderTextField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        style: Theme.of(context).textTheme.labelLarge,
                        decoration: InputDecoration(
                          labelText: l10n.emailLabel,
                          labelStyle: Theme.of(context)
                                  .textTheme
                                  .labelLarge
                                  ?.copyWith(fontWeight: FontWeight.bold) ??
                              const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        keyboardType: TextInputType.text,
                        name: 'email',
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(
                            errorText: l10n.emptyLabel,
                          ),
                          FormBuilderValidators.email(
                            errorText: l10n.invalidFormatLabel,
                          ),
                        ]),
                        enabled: user.email == '',
                        initialValue: user.email,
                      ),
                      FormBuilderTextField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        style: Theme.of(context).textTheme.labelLarge,
                        decoration: InputDecoration(
                          labelText: l10n.phoneLabel,
                          labelStyle: Theme.of(context)
                                  .textTheme
                                  .labelLarge
                                  ?.copyWith(fontWeight: FontWeight.bold) ??
                              const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        keyboardType: TextInputType.number,
                        name: 'phone',
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(
                            errorText: l10n.emptyLabel,
                          ),
                        ]),
                        initialValue: user.phone,
                        enabled: user.phone == '',
                      ),
                      FormBuilderDateTimePicker(
                        style: Theme.of(context).textTheme.labelLarge,
                        name: 'date',
                        inputType: InputType.date,
                        format: DateFormat('dd-MM-yyyy'),
                        decoration: InputDecoration(
                          labelText: l10n.dateLabel,
                          labelStyle: Theme.of(context)
                                  .textTheme
                                  .labelLarge
                                  ?.copyWith(fontWeight: FontWeight.bold) ??
                              const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        initialValue: user.dob,
                        initialDate: DateTime.now()
                            .subtract(const Duration(days: 356 * 18)),
                        lastDate: DateTime.now()
                            .subtract(const Duration(days: 356 * 18)),
                      ),
                      FormBuilderTextField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        style: Theme.of(context).textTheme.labelLarge,
                        decoration: InputDecoration(
                          labelText: l10n.addressLabel,
                          labelStyle: Theme.of(context)
                                  .textTheme
                                  .labelLarge
                                  ?.copyWith(fontWeight: FontWeight.bold) ??
                              const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        keyboardType: TextInputType.text,
                        name: 'address',
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(
                            errorText: l10n.emptyLabel,
                          ),
                        ]),
                        initialValue: user.addr,
                      ),
                      const SizedBox(
                        height: 160,
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          final bloc = context.read<ProfileBloc>();

                          if (_formKey.currentState?.saveAndValidate() ==
                              true) {
                            final data = _formKey.currentState?.value;
                            final name = data?['fullName'].toString();
                            final fName = name?.split(' ')[0];
                            final lName = name?.split(' ')[1];
                            final email = data?['email'].toString();
                            final phone = data?['phone'].toString();
                            final date = data?['date'] as DateTime;
                            final address = data?['address'].toString();
                            final completer = Completer<AppUser>();

                            if (storageFile.file.path.isNotEmpty) {
                              await cubit
                                  .uploadImg(file: storageFile)
                                  .whenComplete(() {
                                context.read<StorageBloc>().state.whenOrNull(
                                  success: (eitherFailuresOrUrls) async {
                                    final tmp = eitherFailuresOrUrls
                                        .map<Option<String>>(
                                      (a) => a.fold(
                                        (l) => none(),
                                        some,
                                      ),
                                    );

                                    final listLink =
                                        tmp.filter((a) => a.isSome()).map(
                                              (a) => a.getOrElse(
                                                () => throw NullThrownError(),
                                              ),
                                            );
                                    final list = listLink.toList();
                                    completer.complete(
                                      AppUser.consumer(
                                        uuid: user.uuid,
                                        firstName: fName ?? '',
                                        lastName: lName ?? '',
                                        phone: phone ?? '',
                                        dob: DateTime.parse(
                                          data?['date']
                                                  .toString()
                                                  .split(' ')[0] ??
                                              '',
                                        ),
                                        addr: data?['address'].toString() ?? '',
                                        email: data?['email'].toString() ?? '',
                                        active: false,
                                        avatarUrl: list[0].isEmpty
                                            ? user.avatarUrl
                                            : list[0],
                                        createdTime: DateTime.now(),
                                        lastUpdatedTime: DateTime.now(),
                                        vac: user.maybeMap(
                                          consumer: (value) => value.vac,
                                          orElse: () => throw NullThrownError(),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              });
                            } else {
                              completer.complete(
                                AppUser.consumer(
                                  uuid: user.uuid,
                                  firstName: fName ?? '',
                                  lastName: lName ?? '',
                                  phone: phone ?? '',
                                  dob: date,
                                  addr: address ?? '',
                                  email: email ?? '',
                                  active: true,
                                  avatarUrl: user.avatarUrl,
                                  createdTime: user.createdTime,
                                  lastUpdatedTime: DateTime.now(),
                                  vac: user.maybeMap(
                                    consumer: (value) => value.vac,
                                    orElse: () => throw NullThrownError(),
                                  ),
                                ),
                              );
                            }
                            final res = await completer.future;
                            bloc.add(ProfileEvent.submitted(res));
                          }
                        },
                        style: Theme.of(context).elevatedButtonTheme.style,
                        child: AutoSizeText(
                          l10n.updateLabel,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showModalButtonSheet(
    BuildContext context,
  ) {
    final bloc = context.read<UploadImageBloc>();
    showMaterialModalBottomSheet<Widget>(
      context: context,
      builder: (context) => SafeArea(
        top: false,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: AutoSizeText(context.l10n.imageFromGalleryLabel),
              leading: const Icon(Icons.photo_library_rounded),
              onTap: () async {
                bloc.add(
                  const UploadImageEvent.imageUploadSelected(
                    source: ImageSource.gallery,
                  ),
                );
                await context.router.pop();
              },
            ),
            ListTile(
              title: AutoSizeText(context.l10n.photoWithCameraLabel),
              leading: const Icon(Icons.camera_alt_rounded),
              onTap: () async {
                bloc.add(
                  const UploadImageEvent.imageUploadSelected(
                    source: ImageSource.camera,
                  ),
                );
                await context.router.pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
