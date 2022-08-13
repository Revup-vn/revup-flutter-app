part of 'invoice_bloc.u.dart';

@freezed
class InvoiceState with _$InvoiceState {
  const factory InvoiceState.initial({required bool ready}) = _Initial;
  const factory InvoiceState.loading() = _Loading;
  const factory InvoiceState.loadingDataSuccess({
    required ProviderData data,
    required bool ready,
    required int total,
    required IList<ServiceData> service,
  }) = _LoadDataSuccess;
}
