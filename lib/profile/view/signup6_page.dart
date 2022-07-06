import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import '../../l10n/l10n.dart';
import '../../account/widgets/circle_avatar.dart';
import '../widgets/update_profile_item.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class Signup6Page extends StatelessWidget {
  const Signup6Page({super.key});
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.fromLTRB(32, 30, 16, 0),
            child: AutoSizeText(
              l10n.completeRegistrationLabel,
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
                    profileName: l10n.dateLabel,
                    textType: TextInputType.datetime,
                    keyName: 'date',
                  ),
                  UpdateProfileItem(
                    profileName: l10n.addressLabel,
                    textType: TextInputType.text,
                    keyName: 'address',
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 50, 16, 10),
                    child: ElevatedButton(
                      // ignore: todo
                      onPressed:
                          () {}, // TODO(namngoc231): complete registration
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
