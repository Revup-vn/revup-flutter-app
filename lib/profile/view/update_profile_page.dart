import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:intl/intl.dart';
import '../../account/widgets/default_avatar.dart';
import '../../account/widgets/user_data.dart';
import '../../l10n/l10n.dart';

class UpdateProfilePage extends StatelessWidget {
  const UpdateProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final users = UserData.fetchAll();
    final user = users.first;
    final _formKey = GlobalKey<FormBuilderState>();
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.fromLTRB(32, 30, 16, 16),
            child: AutoSizeText(
              l10n.editProfileLabel,
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
                    child: CachedNetworkImage(
                      fadeInDuration: const Duration(milliseconds: 50),
                      fadeOutDuration: const Duration(milliseconds: 50),
                      imageUrl: user.urlImage,
                      // ignore: implicit_dynamic_parameter
                      errorWidget: (context, url, error) {
                        return DefaultAvatar(
                          textSize: Theme.of(context).textTheme.headline1,
                          userName: user.name,
                        );
                      },
                      height: 64,
                      width: 64,
                      fit: BoxFit.fitWidth,
                    ),
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
              key: _formKey,
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
                      _formKey.currentState?.validate();
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
                      _formKey.currentState?.validate();
                    },
                  ),
                  FormBuilderTextField(
                    style: Theme.of(context).textTheme.labelLarge,
                    decoration: InputDecoration(
                      labelText: l10n.phoneLabel,
                      labelStyle: Theme.of(context).textTheme.labelLarge,
                    ),
                    keyboardType: TextInputType.number,
                    name: 'phone',
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(
                        errorText: 'Phone Not Empty',
                      ),
                      FormBuilderValidators.match(
                        r'^0?(3|5|7|8|9){1}([0-9]{8})$',
                        errorText: 'Invalid Phone Number',
                      ),
                    ]),
                    onChanged: (phoneNumber) {
                      _formKey.currentState?.validate();
                    },
                  ),
                  FormBuilderDateTimePicker(
                    style: Theme.of(context).textTheme.labelLarge,
                    name: 'dateUpdate',
                    inputType: InputType.date,
                    format: DateFormat('dd-MM-yyyy'),
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
                      _formKey.currentState?.validate();
                    },
                  ),
                  const SizedBox(
                    height: 160,
                  ),
                  ElevatedButton(
                    onPressed:
                        () {}, // TODO(namngoc231): complete update profile
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
    );
  }
}
