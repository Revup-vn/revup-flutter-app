import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import '../bloc/add_report_bloc.dart';
import '../bloc/dropdown_list_bloc.dart';
import '../bloc/upload_image_bloc.dart';
import '../cubit/upload_image_cubit.u.dart';
import 'add_report_builder.u.dart';

class AddReportPage extends StatelessWidget {
  const AddReportPage(this.reportID, {super.key});
  final String reportID;
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddReportBloc(
            reportID,
            context.read(),
            context.read(),
          ),
        ),
        BlocProvider(
          create: (context) => DropdownListBloc(),
        ),
        BlocProvider(
          create: (context) => SignupUploadImageCubit(context.read()),
        ),
        BlocProvider(
          create: (context) => UploadImageBloc(ImagePicker()),
        ),
      ],
      child: const AddReportBuilder(),
    );
  }
}
