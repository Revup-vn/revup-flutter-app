import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:revup_core/core.dart';

part 'pending_service_model.freezed.dart';

@freezed
class PendingServiceModel with _$PendingServiceModel {
  const factory PendingServiceModel({
    required String name,
    required int price,
    required bool isOptional,
    required List<PaymentProduct> products,
  }) = _PendingServiceModel;

  factory PendingServiceModel.fromDto({
    required PaymentService paymentService,
  }) =>
      paymentService.maybeMap(
        pending: (v) => PendingServiceModel(
          name: v.serviceName,
          price: v.moneyAmount,
          isOptional: v.isOptional,
          products: v.products,
        ),
        needToVerify: (v) => PendingServiceModel(
          name: v.serviceName,
          price: -1,
          isOptional: true,
          products: [],
        ),
        orElse: () => throw NullThrownError(),
      );
}
