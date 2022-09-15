import 'dart:async';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:revup_core/core.dart';

import '../../account/widgets/avatar.dart';
import '../../l10n/l10n.dart';
import '../../shared/widgets/dismiss_keyboard.dart';
import '../bloc/bloc/signup_bloc.dart';
import '../bloc/upload_bloc.u.dart';

class SignupView extends StatelessWidget {
  const SignupView(
    this.completer,
    this.phoneNumber,
    this.photoURL,
    this.uid,
    this.email, {
    super.key,
  });
  final Completer<AppUser> completer;
  final String phoneNumber;
  final String photoURL;
  final String uid;
  final String email;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final _formKey = GlobalKey<FormBuilderState>();
    var imgFile = File('');
    return DismissKeyboard(
      child: Scaffold(
        appBar: AppBar(
          title: AutoSizeText(
            l10n.completeRegistrationLabel,
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          automaticallyImplyLeading: false,
        ),
        body: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.fromLTRB(16, 30, 16, 16),
              child: BlocBuilder<UploadBloc, UploadState>(
                builder: (context, state) => state.when(
                  initial: () => Avatar(
                    fileImg: File(''),
                    imageUrl: photoURL,
                    userName: 'Default',
                    callback: () {
                      _showModalButtonSheet(context);
                    },
                  ),
                  choosePhotoSuccess: (file) {
                    imgFile = file;
                    return Avatar(
                      fileImg: file,
                      imageUrl: photoURL,
                      userName: 'Default',
                      callback: () {
                        _showModalButtonSheet(context);
                      },
                    );
                  },
                ),
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
                      maxLength: 50,
                      name: 'fullName',
                      validator: FormBuilderValidators.compose(
                        [
                          FormBuilderValidators.required(
                            errorText: l10n.emptyLabel,
                          ),
                          FormBuilderValidators.match(
                            r'^[a-zA-ZÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚĂĐĨŨƠàáâãèéêìíòóôõùúăđĩũơƯĂẠẢẤẦẨẪẬẮẰẲẴẶẸẺẼỀỀỂẾưăạảấầẩẫậắằẳẵặẹẻẽềềểếỄỆỈỊỌỎỐỒỔỖỘỚỜỞỠỢỤỦỨỪễệỉịọỏốồổỗộớờởỡợụủứừỬỮỰỲỴÝỶỸửữựỳỵỷỹ\sW]*$',
                            errorText: l10n.invalidFormatLabel,
                          ),
                        ],
                      ),
                    ),
                    FormBuilderTextField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      enabled: email == '',
                      initialValue: email,
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
                      maxLength: 70,
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(
                          errorText: l10n.emptyLabel,
                        ),
                        FormBuilderValidators.email(
                          errorText: l10n.invalidFormatLabel,
                        ),
                      ]),
                    ),
                    FormBuilderTextField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      enabled: phoneNumber == '',
                      initialValue: phoneNumber,
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
                      initialDate: DateTime.now()
                          .subtract(const Duration(days: 356 * 18)),
                      lastDate: DateTime.now()
                          .subtract(const Duration(days: 356 * 18)),
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(
                          errorText: l10n.emptyLabel,
                        ),
                      ]),
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
                      maxLength: 50,
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(
                          errorText: l10n.emptyLabel,
                        ),
                      ]),
                    ),
                    const SizedBox(
                      height: 160,
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        if (_formKey.currentState?.saveAndValidate() == true) {
                          final data = _formKey.currentState?.value;
                          final listName =
                              data?['fullName'].toString().split(' ');
                          final fName = listName?[0].trim();
                          var lName = '';
                          if (listName != null && listName.length > 1) {
                            listName.remove(listName[0]);
                            lName = listName.fold<String>(
                              '',
                              (previousValue, element) =>
                                  '${previousValue.trim()} ${element.trim()}',
                            );
                          }

                          var phoneNumber = data?['phone'].toString();
                          if (phoneNumber?.substring(0, 3) == '+84') {
                            phoneNumber = phoneNumber?.substring(
                              3,
                              phoneNumber.length,
                            );
                          }
                          if (phoneNumber?.substring(0, 1) == '0') {
                            phoneNumber = phoneNumber?.substring(
                              1,
                              phoneNumber.length,
                            );
                          }

                          final date = data?['date'].toString().split(' ')[0];
                          final user = AppUser.consumer(
                            uuid: uid,
                            firstName: fName ?? '',
                            lastName: lName,
                            phone: '+84$phoneNumber',
                            dob: DateTime.parse(
                              date ?? '',
                            ),
                            addr: data?['address'].toString() ?? '',
                            email: data?['email'].toString() ?? '',
                            active: true,
                            avatarUrl: photoURL,
                            createdTime: DateTime.now(),
                            lastUpdatedTime: DateTime.now(),
                            vac: VideoCallAccount(
                              id: uid,
                              username: '+84$phoneNumber',
                              email: data?['email'].toString() ?? '',
                            ),
                          );
                          context.read<SignupBloc>().add(
                                SignupEvent.submited(
                                  aUser: user,
                                  imgFile: imgFile,
                                  completer: completer,
                                ),
                              );
                        }
                      },
                      style: Theme.of(context).elevatedButtonTheme.style,
                      child: AutoSizeText(
                        l10n.doneLabel,
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
    );
  }

  void _showModalButtonSheet(
    BuildContext context,
  ) {
    final bloc = context.read<UploadBloc>();
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
                  const UploadEvent.imageUploadSelected(
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
                  const UploadEvent.imageUploadSelected(
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
