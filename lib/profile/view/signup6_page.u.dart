import 'dart:async';

import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:intl/intl.dart';
import 'package:revup_core/core.dart';

import '../../account/model/user_model.dart';
import '../../account/widgets/avatar.dart';
import '../../l10n/l10n.dart';
import '../../shared/utils.dart';
import '../../shared/widgets/dismiss_keyboard.dart';

class Signup6Page extends StatelessWidget {
  const Signup6Page(
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
    final mayBeUser = getUser(context.read<AuthenticateBloc>().state);
    late AppUser user;
    if (mayBeUser.isSome()) {
      user = mayBeUser.toNullable()!;
    } else {
      context.router.popUntil((route) => true);
    }

    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText(
          l10n.completeRegistrationLabel,
          style: Theme.of(context)
              .textTheme
              .headlineSmall
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.fromLTRB(16, 30, 16, 16),
            child: Avatar(
              user: UserModel.fromDto(
                user,
              ),
              callback: () {
                // TODO(namngoc231): Go to photo selection method
              },
            ),
          ),
          DismissKeyboard(
            child: Padding(
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
                        FormBuilderValidators.match(
                          r'^0?(3|5|7|8|9){1}([0-9]{8})$',
                          errorText: l10n.invalidFormatLabel,
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
                    ),
                    const SizedBox(
                      height: 160,
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        _formKey.currentState!.saveAndValidate();
                        final data = _formKey.currentState!.value;
                        final fName = data['fullName'].toString().split(' ')[0];
                        final lName =
                            data['fullName'].toString().split(fName)[1];
                        var phoneNumber = data['phone'].toString();
                        if (phoneNumber.substring(0, 3) == '+84') {
                          phoneNumber = phoneNumber.substring(
                            3,
                            phoneNumber.length,
                          );
                        }
                        if (phoneNumber.substring(0, 1) == '0') {
                          phoneNumber = phoneNumber.substring(
                            1,
                            phoneNumber.length,
                          );
                        }
                        completer.complete(
                          AppUser.consumer(
                            uuid: uid,
                            firstName: fName,
                            lastName: lName,
                            phone: '+84$phoneNumber',
                            dob: DateTime.parse(
                              data['date'].toString().split(' ')[0],
                            ),
                            addr: data['address'].toString(),
                            email: data['email'].toString(),
                            active: true,
                            avatarUrl: photoURL,
                            createdTime: DateTime.now(),
                            lastUpdatedTime: DateTime.now(),
                            vac: const VideoCallAccount(
                              id: '',
                              username: '',
                              pwd: '',
                              email: '',
                            ),
                          ),
                        );
                        await context.router.pop();
                      }, // TODO(namngoc231): complete update profile
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
          ),
        ],
      ),
    );
  }
}
