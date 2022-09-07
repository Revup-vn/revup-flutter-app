import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:revup_core/core.dart';

import '../../image_picker/bloc/image_picker_bloc.u.dart';
import '../bloc/new_service_bloc.dart';
import 'new_service_request_view.u.dart';

class NewServiceRequestPage extends StatelessWidget {
  const NewServiceRequestPage({
    super.key,
    required this.optionalService,
    required this.providerId,
    required this.isSelectProduct,
    this.recordId,
  });
  final List<OptionalService> optionalService;
  final String providerId;
  final bool isSelectProduct;
  final String? recordId;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ImagePickerBloc(ImagePicker()),
        ),
        BlocProvider(
          create: (context) => NewServiceBloc(
            context.read(),
            context.read(),
            context.read(),
            recordId ?? '',
          ),
        ),
      ],
      child: NewServiceRequestView(
        optionalService: optionalService,
        providerId: providerId,
        isSelectProduct: isSelectProduct,
        recordId: recordId,
      ),
    );
  }
}
