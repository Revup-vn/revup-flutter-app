import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:intl/intl.dart';

import '../../account/bloc/account_bloc.dart';
import '../../account/widgets/avatar.dart';
import '../../l10n/l10n.dart';

class Signup6Page extends StatelessWidget {
  const Signup6Page({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
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
      body: BlocBuilder<AccountBloc, AccountState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Text('Empty'),
            loading: () => const Center(child: CircularProgressIndicator()),
            failure: () => const Text('Failed'),
            success: (user) => ListView(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.fromLTRB(16, 30, 16, 16),
                  child: Avatar(
                    user: user,
                    callback: () {
                      // TODO(namngoc231): Go to photo selection method
                    },
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
                          onChanged: (fullname) {
                            _formKey.currentState?.fields['fullName']!
                                .validate();
                          },
                        ),
                        FormBuilderTextField(
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
                                    .labelLarge
                                    ?.copyWith(fontWeight: FontWeight.bold) ??
                                const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          initialValue: DateTime.now(),
                        ),
                        FormBuilderTextField(
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
                          onChanged: (address) {
                            _formKey.currentState?.fields['address']!
                                .validate();
                          },
                        ),
                        const SizedBox(
                          height: 240,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // TODO(namngoc231): complete update profile
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
        },
      ),
    );
  }
}
