import 'dart:async';
import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:intl/intl.dart';
import 'package:revup_core/core.dart';
// import '../../../account/widgets/default_avatar.dart';
// import '../../../account/model/user_data.dart';
import '../../../l10n/l10n.dart';
import '../../router/app_router.dart';
import '../../test/test.dart';

class Signup6Page extends StatelessWidget {
  const Signup6Page(
    this.completer,
    this.phoneNumber,
    this.photoURL,
    this.uid, {
    super.key,
  });
  final Completer completer;
  final String phoneNumber;
  final String photoURL;
  final String uid;
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    // final users = UserData.fetchAll();
    // final user = users.first;
    final _completeSignup = GlobalKey<FormBuilderState>();
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.fromLTRB(32, 30, 16, 16),
            child: AutoSizeText(
              l10n.completeRegistrationLabel,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.fromLTRB(16, 30, 16, 16),
            child: Stack(
              children: [
                SizedBox(
                  height: 140,
                  width: 140,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(70),
                    // child: CachedNetworkImage(
                    //   fadeInDuration: const Duration(milliseconds: 50),
                    //   fadeOutDuration: const Duration(milliseconds: 50),
                    //   imageUrl: user.urlImage,
                    //   // ignore: implicit_dynamic_parameter
                    //   errorWidget: (context, url, error) {
                    //     return DefaultAvatar(
                    //       textSize: Theme.of(context).textTheme.headline1,
                    //       userName: user.name,
                    //     );
                    //   },
                    //   height: 64,
                    //   width: 64,
                    //   fit: BoxFit.fitWidth,
                    // ),
                  ),
                ),
                Positioned(
                  bottom: 1,
                  right: 1,
                  child: DecoratedBox(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [BoxShadow(blurRadius: 5, spreadRadius: 0.1)],
                    ),
                    child: CircleAvatar(
                      backgroundColor: Theme.of(context).colorScheme.onPrimary,
                      radius: 17,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.camera_alt,
                          size: 20,
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: FormBuilder(
              key: _completeSignup,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  FormBuilderTextField(
                    style: Theme.of(context).textTheme.labelLarge,
                    decoration: InputDecoration(
                      labelText: l10n.fullNameLabel,
                      labelStyle: Theme.of(context).textTheme.labelLarge,
                    ),
                    keyboardType: TextInputType.text,
                    name: 'fullName',
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(
                        errorText: 'FullName Not Empty',
                      ),
                      FormBuilderValidators.match(
                        r'^[a-zA-Z ]+$',
                        errorText: 'Invalid FullName',
                      ),
                    ]),
                    onChanged: (fullname) {
                      _completeSignup.currentState?.validate();
                    },
                  ),
                  FormBuilderTextField(
                    style: Theme.of(context).textTheme.labelLarge,
                    decoration: InputDecoration(
                      labelText: l10n.emailLabel,
                      labelStyle: Theme.of(context).textTheme.labelLarge,
                    ),
                    keyboardType: TextInputType.text,
                    name: 'email',
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(
                        errorText: 'Email Not Empty',
                      ),
                      FormBuilderValidators.email(),
                    ]),
                    onChanged: (email) {
                      _completeSignup.currentState?.validate();
                    },
                  ),
                  FormBuilderDateTimePicker(
                    style: Theme.of(context).textTheme.labelLarge,
                    name: 'dateUpdate',
                    inputType: InputType.date,
                    format: DateFormat('yyyy-MM-dd'),
                    decoration: InputDecoration(
                      labelText: l10n.dateLabel,
                      labelStyle: Theme.of(context).textTheme.labelLarge,
                    ),
                    // initialValue: DateTime.now(),
                  ),
                  FormBuilderTextField(
                    style: Theme.of(context).textTheme.labelLarge,
                    decoration: InputDecoration(
                      labelText: l10n.addressLabel,
                      labelStyle: Theme.of(context).textTheme.labelLarge,
                    ),
                    keyboardType: TextInputType.text,
                    name: 'address',
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(
                        errorText: 'Address Not Empty',
                      ),
                    ]),
                    onChanged: (address) {
                      _completeSignup.currentState?.validate();
                    },
                  ),
                  const SizedBox(
                    height: 210,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_completeSignup.currentState!.validate()) {
                        _completeSignup.currentState!.saveAndValidate();
                        final data = _completeSignup.currentState!.value;
                        final fName = data['fullName'].toString().split(' ')[0];
                        final lName =
                            data['fullName'].toString().split(fName)[1];
                        log(data['dateUpdate'].toString().split(' ')[0]);
                        completer.complete(
                          AppUser.consumer(
                            uuid: uid,
                            firstName: fName,
                            lastName: lName,
                            phone: phoneNumber,
                            dob: DateTime.parse(
                              data['dateUpdate'].toString().split(' ')[0],
                            ),
                            addr: data['address'].toString(),
                            email: data['email'].toString(),
                            active: true,
                            avatarUrl:
                                photoURL == '' ? 'default/avatar' : photoURL,
                            createdTime: DateTime.now(),
                            lastUpdatedTime: DateTime.now(),
                          ),
                        );
                      }
                      context.router.pop();
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
    );
  }
}
