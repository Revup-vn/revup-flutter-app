part of 'invoice_payment_bloc.u.dart';

@freezed
class InvoicePaymentState with _$InvoicePaymentState {
  const factory InvoicePaymentState.initial() = _Initial;
  const factory InvoicePaymentState.loading() = _Loading;
  const factory InvoicePaymentState.failure() = _Failure;
  const factory InvoicePaymentState.changePaymentMethodSuccess({
    required bool isPaymentOnline,
  }) = _ChangePaymentMethodSuccess;
  const factory InvoicePaymentState.paymentSuccess({
    required String paymentStatus,
  }) = _PaymentSuccess;
}
