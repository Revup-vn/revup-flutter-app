part of 'address_cubit.dart';

@freezed
class AddressState with _$AddressState {
  const factory AddressState.initial() = _Initial;
  const factory AddressState.loading() = _Loading;
  const factory AddressState.failure() = _Failure;
  const factory AddressState.success({required String addr}) = _Success;
}
