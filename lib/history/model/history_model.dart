import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_model.freezed.dart';

@freezed
class HistoryModel with _$HistoryModel {
  const factory HistoryModel({
    required String name,
    required String email,
    required String phone,
    required DateTime date,
    required String address,
    required String urlImage,
  }) = _HistoryModel;
}
