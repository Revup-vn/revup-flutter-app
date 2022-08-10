import 'dart:developer';

import 'package:dio/dio.dart';

import '../configs/firebase_options.dart';

void sendNotificationTo(String deviceToken, String recordId) async {
  const _endPoint = 'https://fcm.googleapis.com/fcm/send';
  const _contentType = 'application/json';
  final _authorization = 'key=${DefaultFirebaseOptions.android.apiKey}';
  Future<void> sendNotificationTo(
    String token,
    String title,
    String body,
  ) async {
    try {
      final data = {
        'device_token': deviceToken,
        'notification': {
          'title': title,
          'body': body,
        },
      };

      await Dio().post<String>(
        _endPoint,
        data: data,
        options: Options(
          contentType: _contentType,
          headers: <String, String>{
            'Authorization': _authorization,
          },
        ),
      );
    } on DioError catch (e) {
      log(e.error.toString());
    }
  }
}
