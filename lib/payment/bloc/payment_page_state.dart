part of 'payment_page_bloc.dart';

@freezed
class PaymentPageState with _$PaymentPageState {
  const factory PaymentPageState.initial() = _Initial;
  const factory PaymentPageState.failure() = _Failure;
  const factory PaymentPageState.loading() = _Loading;
  const factory PaymentPageState.success() = _Success;
}
