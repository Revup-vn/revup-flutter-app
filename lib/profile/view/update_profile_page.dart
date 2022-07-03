// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:revup/l10n/l10n.dart';
import 'package:revup/profile/widgets/update_profile_item.dart';
import '../../account/widgets/circle_avatar.dart';

void main() => runApp(const UpdateProfilePage());

class UpdateProfilePage extends StatelessWidget {
  const UpdateProfilePage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: _buildListView(context),
      ),
      debugShowCheckedModeBanner: false,
    );
  }

  ListView _buildListView(BuildContext context) {
    final l10n = context.l10n;
    return ListView(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.fromLTRB(32, 30, 16, 0),
          child: Text(
            l10n.editProfileText,
            style: const TextStyle(fontSize: 30),
          ),
        ),
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.fromLTRB(16, 60, 10, 16),
          child: const CircleAvatarAccount(
            radiusCircleAvatar: 80,
            radiusCircleAvatarIcon: 18,
            sizeIcon: 22,
            sizeText: 120,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(16),
          child: Form(
            child: Column(
              children: [
                UpdateProfileItem(
                  profileName: l10n.fullNameLabel,
                  textType: TextInputType.text,
                ),
                UpdateProfileItem(
                  profileName: l10n.emailLabel,
                  textType: TextInputType.text,
                ),
                UpdateProfileItem(
                  profileName: l10n.phoneLabel,
                  textType: TextInputType.number,
                ),
                UpdateProfileItem(
                  profileName: l10n.dateLabel,
                  textType: TextInputType.datetime,
                ),
                UpdateProfileItem(
                  profileName: l10n.addressLabel,
                  textType: TextInputType.text,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 50, 16, 10),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(850, 50),
                      primary: const Color.fromARGB(255, 87, 68, 16),
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30),
                      ),
                    ),
                    child: Text(
                      l10n.updateText,
                      style: const TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
