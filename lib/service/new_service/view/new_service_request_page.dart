import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import '../../../l10n/l10n.dart';
import '../../../shared/widgets/dismiss_keyboard.dart';
import '../../image_picker/bloc/image_picker_bloc.dart';
import '../bloc/new_service_bloc.dart';
import 'new_service_request_view.u.dart';

class NewServiceRequestPage extends StatelessWidget {
  const NewServiceRequestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NewServiceBloc(),
        ),
        BlocProvider(
          create: (context) => ImagePickerBloc(ImagePicker()),
        )
      ],
      child: DismissKeyboard(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            title: AutoSizeText(context.l10n.newRequestServiceAppBarTitle),
            centerTitle: false,
          ),
          body: const NewServiceRequestView(),
        ),
      ),
    );
  }
}
