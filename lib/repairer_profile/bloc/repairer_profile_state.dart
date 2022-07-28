part of 'repairer_profile_bloc.dart';

@freezed
class RepairerProfileState with _$RepairerProfileState {
  const factory RepairerProfileState.initial() = _Initial;
  const factory RepairerProfileState.dataLoadSuccess({
    required IList<ServiceData> serviceData,
    required IList<RatingData> ratingData,
    required ProviderData provider,
  }) = _DataLoadSuccess;
  const factory RepairerProfileState.dataLoadFailure() = _DataLoadFailure;
  const factory RepairerProfileState.loading() = _Loading;
}
