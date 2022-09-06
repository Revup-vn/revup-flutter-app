part of 'invoice_bloc.u.dart';

@freezed
class InvoiceState with _$InvoiceState {
  const factory InvoiceState.initial({required bool ready}) = _Initial;
  const factory InvoiceState.loading() = _Loading;
  const factory InvoiceState.failure() = _Failure;
  const factory InvoiceState.loadingDataSuccess({
    required ProviderData data,
    required bool ready,
    required List<PendingServiceModel> services,
  }) = _LoadDataSuccess;
}
