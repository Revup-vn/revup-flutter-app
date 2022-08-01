part of 'invoice_payment_bloc.dart';

@freezed
class InvoicePaymentEvent with _$InvoicePaymentEvent {
  const factory InvoicePaymentEvent.started() = _Started;
}
