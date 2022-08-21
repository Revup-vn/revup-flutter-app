import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import '../../h2_find_provider/models/provider_data.u.dart';
import '../../l10n/l10n.dart';
import '../../service/image_picker/bloc/image_picker_bloc.u.dart';
import '../../shared/widgets/dismiss_keyboard.dart';
import 'add_message_view.u.dart';

class AddMessagePage extends StatelessWidget {
  const AddMessagePage({
    super.key,
    required this.providerData,
    required this.movingFee,
  });
  final ProviderData providerData;
  final int movingFee;
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ImagePickerBloc(ImagePicker()),
        ),
      ],
      child: DismissKeyboard(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            centerTitle: false,
            title: AutoSizeText(context.l10n.addMessageTitle),
          ),
          body: AddMessageView(
            providerData: providerData,
            movingFee: movingFee,
          ),
        ),
      ),
    );
  }
}
