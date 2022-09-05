import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../l10n/l10n.dart';
import '../../shared/widgets/loading.u.dart';
import '../../shared/widgets/unknown_failure.dart';
import '../bloc/notification_page_bloc.dart';
import '../widgets/notification_item.u.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    final blocPage = context.watch<NotificationPageBloc>();
    blocPage.state.maybeWhen(
      initial: () => blocPage.add(
        const NotificationPageEvent.started(),
      ),
      orElse: () => false,
    );

    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText(l10n.notificationLabel),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(16, 40, 16, 0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              BlocBuilder<NotificationPageBloc, NotificationPageState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    failure: UnknownFailure.new,
                    success: (notifications) {
                      final noti = notifications.toList();

                      return ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: noti.length,
                        itemBuilder: (BuildContext context, int index) =>
                            NotificationItem(
                          title: noti[index].title,
                          body: noti[index].body,
                          time: noti[index].time,
                        ),
                      );
                    },
                    orElse: Loading.new,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
