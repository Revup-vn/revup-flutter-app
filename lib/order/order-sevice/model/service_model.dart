import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_model.freezed.dart';

@freezed
class ServiceModel with _$ServiceModel {
  const factory ServiceModel({
    required String name,
    required int price,
    required String providerID,
    required String consumerID,
    required int status,
  }) = _ServiceModel;

  factory ServiceModel.fromDTO(
    String serviceName,
    int servicePrice,
    String consumerID,
    String providerID,
    int status,
  ) =>
      ServiceModel(
        name: serviceName,
        price: servicePrice,
        providerID: providerID,
        consumerID: consumerID,
        status: status,
      );
}
