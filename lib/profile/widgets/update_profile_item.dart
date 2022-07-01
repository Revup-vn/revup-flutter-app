import 'package:flutter/material.dart';

class UpdateProfileItem extends StatelessWidget {
  // ignore: lines_longer_than_80_chars
  const UpdateProfileItem({
    super.key,
    required this.profileName,
    required this.textType,
  });
  final String profileName;
  final TextInputType textType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(fontSize: 22),
      decoration: InputDecoration(
        labelText: profileName,
        labelStyle: const TextStyle(fontSize: 18),
      ),
      keyboardType: textType,
    );
  }
}
