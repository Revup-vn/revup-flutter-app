import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/notification_consumer_bloc.dart';
import 'notification_consumer_view.u.dart';

class NotificationConsumerPage extends StatelessWidget {
  const NotificationConsumerPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => NotificationConsumerBloc()
        ..add(
          const NotificationConsumerEvent.started(),
        ),
      child: const NotificationConsumerView(),
    );
  }
}
