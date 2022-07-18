import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:intl/intl.dart';
import '../../account/widgets/default_avatar.dart';
import '../../account/model/user_data.dart';
import '../../l10n/l10n.dart';
import '../cubit/update_profile_cubit.dart';

class Signup6Page extends StatelessWidget {
  const Signup6Page({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final users = UserData.fetchAll();
    final user = users.first;
    final _formKey = GlobalKey<FormBuilderState>();
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
                      placeholder: (context, url) {
                        return DefaultAvatar(
                          textSize: Theme.of(context).textTheme.headline1,
                          userName: user.name,
                        );
                      },
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
                      labelStyle: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .copyWith(fontWeight: FontWeight.bold),
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
                    onChanged: (fullname) {
                      _formKey.currentState?.fields['fullName']!.validate();
                    },
                  ),
                  FormBuilderTextField(
                    style: Theme.of(context).textTheme.labelLarge,
                    decoration: InputDecoration(
                      labelText: l10n.emailLabel,
                      labelStyle: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .copyWith(fontWeight: FontWeight.bold),
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
                    onChanged: (email) {
                      _formKey.currentState?.fields['email']!.validate();
                    },
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
                          .labelLarge!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    initialValue: DateTime.now(),
                  ),
                  FormBuilderTextField(
                    style: Theme.of(context).textTheme.labelLarge,
                    decoration: InputDecoration(
                      labelText: l10n.addressLabel,
                      labelStyle: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    keyboardType: TextInputType.text,
                    name: 'address',
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(
                        errorText: l10n.emptyLabel,
                      ),
                    ]),
                    onChanged: (address) {
                      _formKey.currentState?.fields['address']!.validate();
                    },
                  ),
                  BlocBuilder<UpdateProfileCubit, UpdateProfileState>(
                    builder: (context, state) {
                      return state.when(
                        initial: () {
                          return const Text('Data:');
                        },
                        loading: () {
                          return const CircularProgressIndicator();
                        },
                        loaded: (
                          String fullName,
                          String email,
                          String phone,
                          String date,
                          String address,
                        ) {
                          return Text(
                            '$fullName   $email   $date   $address',
                          );
                        },
                      );
                    },
                  ),
                  const SizedBox(
                    height: 160,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.saveAndValidate()) {
                        final data = _formKey.currentState!.value;
                        final fName = data['fullName'].toString();
                        final email = data['email'].toString();
                        final phone = data['phone'].toString();
                        final date = data['date'] as DateTime;
                        final dateFomat = DateFormat('dd-MM-yyyy').format(date);
                        final address = data['address'].toString();
                        context.read<UpdateProfileCubit>().updateProfile(
                              fName,
                              email,
                              phone,
                              dateFomat,
                              address,
                            );
                      } else {
                        return;
                      }
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
        ],
      ),
    );
  }
}
