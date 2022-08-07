import 'package:freezed_annotation/freezed_annotation.dart';

import '../../repairer_profile/models/service_data.u.dart';

part 'service_select.freezed.dart';

@freezed
class ServiceSelect with _$ServiceSelect {
  factory ServiceSelect({
    required String name,
    required int serviceFee,
    required String imageURL,
    required bool isSelected,
  }) = _ServiceSelect;

  factory ServiceSelect.fromServiceData(
    ServiceData service, {
    required bool isSelected,
  }) =>
      ServiceSelect(
        imageURL: service.imageURL,
        name: service.name,
        serviceFee: service.serviceFee,
        isSelected: isSelected,
      );
}
