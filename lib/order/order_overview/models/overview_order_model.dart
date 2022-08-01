import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:revup_core/core.dart';

part 'overview_order_model.freezed.dart';

@freezed
class OverviewOrderModel with _$OverviewOrderModel {
  factory OverviewOrderModel({
    required String providerID,
    required String videoCallID,
    required String providerName,
    required String distance,
  }) = _OverviewOrderModel;

  factory OverviewOrderModel.fromDto(AppUser user) => user.maybeMap(
        provider: (value) => OverviewOrderModel(
          providerID: user.uuid,
          videoCallID: 'videoCallID',
          providerName: '${user.firstName} ${user.lastName}',
          distance: distance,
        ),
        orElse: () => false,
      );
}
