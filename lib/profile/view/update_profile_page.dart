import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';
import '../../account/widgets/use_avatar.dart';
import '../../l10n/l10n.dart';
import '../widgets/update_profile_item.dart';

class UpdateProfilePage extends StatelessWidget {
  const UpdateProfilePage({super.key});
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final userName = 'Nam Anh';
    const urlImage =
        'https://cdn.pixabay.com/photo/2017/09/27/15/52/man-2792456_1280.jpg';
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.fromLTRB(32, 30, 16, 0),
            child: AutoSizeText(
              l10n.editProfileLabel,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.fromLTRB(16, 60, 10, 16),
            child: UserAvatar(
              avatarSize: 80,
              cameraContainerSize: 18,
              cameraSize: 22,
              textSize: Theme.of(context).textTheme.headline1,
              userName: userName,
              urlImage: urlImage,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: FormBuilder(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  UpdateProfileItem(
                    profileName: l10n.fullNameLabel,
                    textType: TextInputType.text,
                    keyName: 'fullName',
                  ),
                  UpdateProfileItem(
                    profileName: l10n.emailLabel,
                    textType: TextInputType.text,
                    keyName: 'email',
                  ),
                  UpdateProfileItem(
                    profileName: l10n.phoneLabel,
                    textType: TextInputType.number,
                    keyName: 'phone',
                  ),
                  FormBuilderDateTimePicker(
                    style: Theme.of(context).textTheme.labelLarge,
                    name: 'date',
                    inputType: InputType.date,
                    format: DateFormat('dd-MM-yyyy'),
                    decoration: InputDecoration(
                      labelText: l10n.dateLabel,
                      labelStyle: Theme.of(context).textTheme.labelLarge,
                    ),
                    initialValue: DateTime.now(),
                  ),
                  UpdateProfileItem(
                    profileName: l10n.addressLabel,
                    textType: TextInputType.text,
                    keyName: 'address',
                  ),
                  const SizedBox(
                    height: 16,
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
