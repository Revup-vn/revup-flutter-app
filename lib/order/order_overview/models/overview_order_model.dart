import 'package:freezed_annotation/freezed_annotation.dart';

part 'overview_order_model.freezed.dart';

@freezed
class OverviewOrderModel with _$OverviewOrderModel {
  factory OverviewOrderModel({
    String? providerID,
    String? distance,
    String? repairRequestID,
  }) = _OverviewOrderModel;
}
