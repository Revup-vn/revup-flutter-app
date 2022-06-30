import 'dart:async';
import 'dart:developer';

import 'package:flutter/widgets.dart';

import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:revup/firebase_options.dart';

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );
      await BlocOverrides.runZoned(
        () async => runApp(await builder()),
      );
    },
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}
