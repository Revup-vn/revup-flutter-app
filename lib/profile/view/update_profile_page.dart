import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import '../widgets/update_profile_item.dart';

import '../../account/widgets/circle_avatar.dart';
import '../../l10n/l10n.dart';

class UpdateProfilePage extends StatelessWidget {
  const UpdateProfilePage({super.key});
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
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
            child: CircleAvatarAccount(
              radiusCircleAvatar: 80,
              radiusCircleAvatarIcon: 18,
              sizeIcon: 22,
              sizeText: Theme.of(context).textTheme.headline1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: FormBuilder(
              child: Column(
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
                  UpdateProfileItem(
                    profileName: l10n.dateLabel,
                    textType: TextInputType.datetime,
                    keyName: 'date',
                  ),
                  FormBuilderDateTimePicker(
                    name: 'date',
                    // onChanged: _onChanged,
                    inputType: InputType.time,
                    decoration: const InputDecoration(
                      labelText: 'Appointment Time',
                    ),
                    initialTime: const TimeOfDay(hour: 8, minute: 0),
                    initialValue: DateTime.now(),
                  ),
                  UpdateProfileItem(
                    profileName: l10n.addressLabel,
                    textType: TextInputType.text,
                    keyName: 'address',
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 50, 16, 10),
                    // child: ElevatedButton(
                    //   // ignore: todo
                    //   onPressed: () {}, // TODO(namngoc231): implement on press
                    //   style: ElevatedButton.styleFrom(
                    //     fixedSize: const Size(850, 50),
                    //     primary: const Color.fromARGB(255, 87, 68, 16),
                    //     shape: RoundedRectangleBorder(
                    //       borderRadius: BorderRadius.circular(30),
                    //     ),
                    //   ),
                    //   //style: Theme.of(context).elevatedButtonTheme.style,
                    //   child: Text(
                    //     l10n.updateText,
                    //style: const TextStyle(fontSize: 18, color: Colors.white),
                    //   ),
                    // ),
                    child: ElevatedButton(
                      // ignore: todo
                      onPressed:
                          () {}, // TODO(namngoc231): complete update profile
                      style: Theme.of(context).elevatedButtonTheme.style,
                      child: AutoSizeText(
                        l10n.updateLabel,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
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
