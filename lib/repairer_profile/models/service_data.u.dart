import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:revup_core/core.dart';

import '../../order/models/pending_service_model.dart';
import '../../shared/fallbacks.dart';

part 'service_data.u.freezed.dart';

@freezed
class ServiceData with _$ServiceData {
  factory ServiceData({
    required String name,
    required int serviceFee,
    required String imageURL,
    required bool isOptional,
  }) = _ServiceData;

  factory ServiceData.fromDtos(RepairService service) => ServiceData(
        imageURL: service.img ?? kFallbackImage,
        name: service.name,
        serviceFee: service.fee,
        isOptional: false,
      );

  factory ServiceData.fromPendingService(PendingServiceModel service) =>
      ServiceData(
        imageURL: kFallbackImage,
        name: service.name,
        serviceFee: service.price,
        isOptional: service.isOptional,
      );
}
