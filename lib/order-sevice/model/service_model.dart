import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_model.freezed.dart';

@freezed
class ServiceModel with _$ServiceModel {
  const factory ServiceModel({
    required String name,
    required int price,
  }) = _ServiceModel;
}
