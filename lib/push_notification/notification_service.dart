import 'dart:developer';

import 'package:dio/dio.dart';

import '../configs/firebase_options_pub.dart';

Future<void> sendNotificationTo(
  String deviceToken,
  String recordId,
  String title,
  String body,
) async {
  const _endPoint = 'https://fcm.googleapis.com/fcm/send';
  const _contentType = 'application/json';
  final _authorization = 'key=${DefaultFirebaseOptions.android.apiKey}';
  try {
    final data = <String, dynamic>{
      'notification': {'title': ''},
      'data': title,
      'priority': 'high',
      'to': deviceToken,
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
