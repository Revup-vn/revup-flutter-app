import 'dart:math';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../l10n/l10n.dart';

class NewServiceView extends StatelessWidget {
  const NewServiceView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText(''),
        centerTitle: false,
      ),
      body: Column(
        children: [
          AutoSizeText('Thông tin dịch vụ'),
          AutoSizeText('Tên dịch vụ'),
          FormBuilderTextField(name: 'name'),
          AutoSizeText('Mô tả (tối đa 100 kí tự)'),
          FormBuilderTextField(name: 'description'),
        ],
      ),
    );
  }
}
