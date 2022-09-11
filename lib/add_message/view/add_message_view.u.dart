import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../h2_find_provider/models/provider_data.u.dart';
import '../../l10n/l10n.dart';
import '../../router/router.dart';
import '../../service/image_picker/bloc/image_picker_bloc.u.dart';

class AddMessageView extends StatefulWidget {
  const AddMessageView({
    super.key,
    required this.providerData,
    required this.movingFee,
  });
  final ProviderData providerData;
  final int movingFee;

  @override
  State<AddMessageView> createState() => _AddMessageViewState();
}

class _AddMessageViewState extends State<AddMessageView> {
  final _descFieldKey = GlobalKey<FormBuilderFieldState>();
  File? _image;
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final blocImgPicker = context.watch<ImagePickerBloc>();

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 28, 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 32),
          AutoSizeText(l10n.addMessageTitle),
          const SizedBox(height: 16),
          AutoSizeText(
            l10n.optionalAddMsgGuideLabel,
            maxLines: 1,
            style: Theme.of(context).textTheme.caption,
          ),
          const SizedBox(height: 8),
          FormBuilderTextField(
            key: _descFieldKey,
            name: 'desc',
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              labelText: l10n.serviceDescriptionLabel,
            ),
            keyboardType: TextInputType.multiline,
            maxLines: 5,
            maxLength: 100,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: ElevatedButton(
              onPressed: () async {
                if (_descFieldKey.currentState?.validate() ?? false) {
                  final desc =
                      _descFieldKey.currentState?.value.toString() == 'null'
                          ? ''
                          : _descFieldKey.currentState?.value.toString();
                  final boxRprRecord = Hive.box<dynamic>('repairRecord');
                  await boxRprRecord.put('msgDesc', desc);
                  await boxRprRecord.put(
                    'msgImg',
                    await _image?.readAsBytes() ?? '',
                  );
                  await boxRprRecord.put('movingFee', widget.movingFee);
                  await context.router.push(
                    ChooseServiceRoute(
                      providerId: widget.providerData.id,
                      optionalService: const [],
                    ),
                  );
                }
              },
              style: Theme.of(context).elevatedButtonTheme.style,
              child: AutoSizeText(l10n.confirmLabel),
            ),
          ),
        ],
      ),
    );
  }
}
