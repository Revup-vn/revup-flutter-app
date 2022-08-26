import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:dartz/dartz.dart' hide State;
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
      print(type);
      switch (type) {
        case NotificationType.ProviderAccept:
          final providerId = p0.payload.payload['providerId'] as String;
          final recordId = p0.payload.payload['recordId'] as String;

          // route to order overview
          context.router.push(
            OverViewOrderRoute(providerId: providerId, recordId: recordId),
          );
          break;
        case NotificationType.NormalMessage:
          final subType = p0.payload.payload['subType'] as String;
          final providerId = p0.payload.payload['providerId'] as String;
          if (subType == 'ProviderDeparted') {
            context.router.push(MapRouteRoute(providerId: providerId));
          }
          break;
        case NotificationType.VerifiedArrival:
          showDialog<void>(
            context: context,
            builder: (context) => Dialog(
              child: SizedBox(
                height: 150,
                width: 150,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        top: 10,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: AutoSizeText(
                              context.l10n.cancelUpdateServiceLabel,
                              style: Theme.of(context).textTheme.labelLarge,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      right: 1,
                      bottom: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {
                              context.router.pop();
                            },
                            child: AutoSizeText(
                              context.l10n.confirmLabel,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
          break;
        // ignore: no_default_cases
        default:
          print('aaaa');
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
}
