import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:revup_core/core.dart';

import '../../l10n/l10n.dart';
import '../../router/app_router.gr.dart';

class HomePage extends StatelessWidget {
  // const HomePage({super.key, required this.user});
  HomePage({super.key});

  // final AppUser user;
  final user = AppUser.consumer(
    uuid: '1a',
    firstName: 'Nam',
    lastName: 'Ngoc',
    phone: '0866199497',
    dob: DateTime.now(),
    addr: 'Ninh Binh',
    email: 'namngoc231@gmail.com',
    active: true,
    avatarUrl:
        'https://images.unsplash.com/photo-1566492031773-4f4e44671857?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
    createdTime: DateTime.now(),
    lastUpdatedTime: DateTime.now(),
    vac: const VideoCallAccount(
      id: '',
      username: '',
      pwd: '',
      email: '',
    ),
  );

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return RepositoryProvider.value(
      value: user,
      child: AutoTabsScaffold(
        routes: const [
          HomeBodyRoute(),
          HistoryConsumerRoute(),
          NotificationConsumerRoute(),
          AccountRoute(),
        ],
        bottomNavigationBuilder: (_, tabsRouter) {
          return BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: tabsRouter.activeIndex,
            onTap: (index) {
              tabsRouter.setActiveIndex(index);
            },
            items: [
              BottomNavigationBarItem(
                icon: const Icon(Icons.home),
                label: l10n.homeLabel,
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.restore),
                label: l10n.activateLabel,
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.notifications),
                label: l10n.notificationLabel,
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.account_circle),
                label: l10n.accountLabel,
              ),
            ],
          );
        },
      ),
    );
  }
}
