import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:revup_core/core.dart';

import '../../find_provider/models/provider_data.u.dart';
import '../../l10n/l10n.dart';
import '../../service/image_picker/bloc/image_picker_bloc.dart';
import '../../shared/utils.dart';
import '../../shared/widgets/dismiss_keyboard.dart';
import '../bloc/add_message_bloc.dart';
import 'add_message_view.dart';

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
    final mayBeUser = getUser(context.read<AuthenticateBloc>().state);

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddMessageBloc(
            context.read(),
            context.read(),
            mayBeUser,
            providerData,
            movingFee,
          ),
        ),
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
          ),
        ),
      ),
    );
  }
}
