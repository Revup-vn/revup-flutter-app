part of 'invoice_payment_bloc.u.dart';

@freezed
class InvoicePaymentEvent with _$InvoicePaymentEvent {
  const factory InvoicePaymentEvent.started() = _Started;
  const factory InvoicePaymentEvent.changePaymentMethod({
    required bool isPayOnline,
  }) = _ChangePaymentMethod;
  const factory InvoicePaymentEvent.sumbitPayment({
    required bool isPayOnline,
    required int totalAmount,
    required String cid,
    required String pid,
    required Function2<String, String, void> sendMessage,
  }) = _SubmitPayment;
}
