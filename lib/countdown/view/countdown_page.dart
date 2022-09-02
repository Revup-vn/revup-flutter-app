import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/countdown_bloc.dart';
import 'countdown_view.dart';

class CountdownPage extends StatelessWidget {
  const CountdownPage({super.key, required this.token});
  final String token;

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => CountdownBloc(),
        child: CountdownView(token: token),
      );
}
