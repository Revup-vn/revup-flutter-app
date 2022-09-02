import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart' hide State;
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:revup_core/core.dart';

import '../../gen/assets.gen.dart';
import '../../l10n/l10n.dart';
import '../../router/router.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<NotificationCubit>().addForegroundListener((p0) {
      final type = p0.payload.type;
      switch (type) {
        case NotificationType.ProviderAccept:
          final providerId = p0.payload.payload['providerId'] as String;
          final recordId = p0.payload.payload['recordId'] as String;

          // route to order overview
          context.router.pushAndPopUntil(
            OverViewOrderRoute(providerId: providerId, recordId: recordId),
            predicate: (route) => route.settings.name == HomeRoute.name,
          );

          break;
        case NotificationType.NormalMessage:
          final subType = p0.payload.payload['subType'] as String;
          if (subType == 'ProviderDeparted') {
            final providerId = p0.payload.payload['providerId'] as String;
            context.router.push(MapRouteRoute(providerId: providerId));
          }
          if (subType == 'compltedRepair') {
            final recordId = p0.payload.payload['recordId'] as String;
            final providerId = p0.payload.payload['providerId'] as String;
            context.router.push(
              ReviewRepairmanRoute(providerId: providerId, repairId: recordId),
            );
          }
          break;
        case NotificationType.ProviderRepaired:
          final providerId = p0.payload.payload['providerId'] as String;
          final recordId = p0.payload.payload['recordId'] as String;
          _showTopFlash(
            msg: context.l10n.repairDoneLabel,
            context: context,
          );
          context.router.pushAndPopUntil(
            ServiceInvoiceRoute(providerID: providerId, id: recordId),
            predicate: (route) => true,
          );
          break;

        // ignore: no_default_cases
        default:
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Future<void>.delayed(
      const Duration(seconds: 5),
      () {
        final authBloc = context.read<AuthenticateBloc>();
        authBloc.state.maybeMap(
          failure: (_) {
            authBloc.add(const AuthenticateEvent.reset());

            return unit;
          },
          loading: (_) {
            authBloc.add(const AuthenticateEvent.reset());

            return unit;
          },
          orElse: () => unit,
        );
        final notifyCubit = context.read<NotificationCubit>();
        final sr = context.read<StoreRepository>();
        authBloc.state.maybeWhen(
          authenticated: (authType) async {
            await notifyCubit.requirePermission();
            await notifyCubit.registerDevice();

            final token = notifyCubit.state.maybeWhen(
              registered: (token) => token,
              failToRegister: () => '',
              orElse: () => throw NullThrownError(),
            );
            final _iuntr = sr.userNotificationTokenRepo(
              AppUserDummy.dummyConsumer(authType.user.uuid),
            );
            await _iuntr.create(
              Token(
                created: DateTime.now(),
                platform: Platform.operatingSystem,
                token: token,
              ),
            );
          },
          orElse: () => false,
        );
        context.router.pushAndPopUntil(
          authBloc.state.maybeWhen(
            empty: (isFirstTime) =>
                isFirstTime ? const OnboardingRoute() : const LoginRoute(),
            authenticated: (type) {
              Hive.openBox<dynamic>('authType').then(
                (value) {
                  value.put(
                    'auth',
                    type.map(
                      google: (value) =>
                          AuthType.google(user: value.user).toJson(),
                      phone: (value) =>
                          AuthType.phone(user: value.user).toJson(),
                      email: (value) =>
                          AuthType.email(user: value.user).toJson(),
                    ),
                  );
                },
              );
              Hive
                ..openBox<dynamic>('location')
                ..openBox<dynamic>('repairRecord');
              return HomeRoute(user: type.user);
            },
            orElse: LoginRoute.new,
          ),
          predicate: (_) => true,
        );
      },
    );
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(flex: 3, child: Assets.screens.welcome.svg()),
            const Flexible(
              child: Center(
                child: CircularProgressIndicator.adaptive(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showTopFlash({
    bool persistent = true,
    EdgeInsets margin = const EdgeInsets.only(left: 20),
    required String msg,
    required BuildContext context,
  }) {
    showFlash<Unit>(
      duration: const Duration(seconds: 2),
      context: context,
      persistent: persistent,
      builder: (_, controller) {
        return Flash<Widget>(
          controller: controller,
          margin: margin,
          behavior: FlashBehavior.floating,
          position: FlashPosition.top,
          forwardAnimationCurve: Curves.easeIn,
          reverseAnimationCurve: Curves.easeOut,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(6),
            bottomLeft: Radius.circular(6),
          ),
          child: FlashBar(
            content: Text(
              msg,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(color: Theme.of(context).colorScheme.primary),
            ),
            indicatorColor: Colors.green,
            primaryAction: TextButton(
              onPressed: () {
                controller.dismiss();
              },
              child: Text(context.l10n.hideLabel),
            ),
          ),
        );
      },
    );
  }
}
