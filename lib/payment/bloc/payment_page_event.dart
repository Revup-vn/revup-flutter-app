part of 'payment_page_bloc.dart';

@freezed
class PaymentPageEvent with _$PaymentPageEvent {
  const factory PaymentPageEvent.started() = _Started;
}
