part of 'payment_cubit.dart';

@freezed
class PaymentState with _$PaymentState {
  const factory PaymentState.initial() = _Initial;
  const factory PaymentState.failure({
    required String recordId,
  }) = _Failure;
  const factory PaymentState.success({
    required String token,
    required String recordId,
  }) = _Success;
}
