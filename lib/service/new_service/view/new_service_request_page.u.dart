import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:revup_core/core.dart';

import '../../../l10n/l10n.dart';
import '../../../shared/widgets/dismiss_keyboard.dart';
import '../../image_picker/bloc/image_picker_bloc.u.dart';
import 'new_service_request_view.u.dart';

class NewServiceRequestPage extends StatelessWidget {
  const NewServiceRequestPage({
    super.key,
    required this.optionalService,
    required this.providerId,
    required this.isSelectProduct,
  });
  final List<OptionalService> optionalService;
  final String providerId;
  final bool isSelectProduct;

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
            title: AutoSizeText(context.l10n.newRequestServiceAppBarTitle),
            centerTitle: false,
          ),
          body: NewServiceRequestView(
            optionalService: optionalService,
            providerId: providerId,
            isSelectProduct: isSelectProduct,
          ),
        ),
      ),
    );
  }
}
