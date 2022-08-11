part of 'invoice_bloc.u.dart';

@freezed
class InvoiceEvent with _$InvoiceEvent {
  const factory InvoiceEvent.started() = _Started;
}
