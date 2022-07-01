// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:revup/l10n/l10n.dart';

import '../widgets/update_profile_item.dart';

void main() => runApp(const Signup6Page());

class Signup6Page extends StatelessWidget {
  const Signup6Page({super.key});
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
          padding: const EdgeInsets.fromLTRB(16, 50, 16, 0),
          child: Text(
            l10n.completeRegistrationText,
            style: const TextStyle(fontSize: 30),
          ),
        ),
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.fromLTRB(16, 60, 10, 16),
          child: const CircleAvatar(
            radius: 80,
            backgroundColor: Color.fromARGB(255, 242, 226, 80),
            child: Align(
              alignment: Alignment.bottomRight,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 18,
                child: Icon(
                  Icons.camera_alt,
                  size: 22,
                  color: Color(0xFF404040),
                ),
              ),
            ),
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
                  profileName: l10n.dateLabel,
                  textType: TextInputType.datetime,
                ),
                UpdateProfileItem(
                  profileName: l10n.addressLabel,
                  textType: TextInputType.text,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 100, 16, 10),
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
                      l10n.doneText,
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
