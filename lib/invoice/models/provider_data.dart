import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:revup_core/core.dart';

part 'provider_data.freezed.dart';

@freezed
class ProviderData with _$ProviderData {
  factory ProviderData({
    required String providerID,
    required String providerName,
    required String providerUrlAvatar,
    required String providerAddress,
    required double ratingStar,
    required int totalStarRating,
  }) = _ProviderData;
  factory ProviderData.fromDtos(
    AppUser user,
    double ratingStar,
    int totalStarRating,
  ) =>
      user.map(
        consumer: (value) => throw NullThrownError(),
        provider: (user) => ProviderData(
          providerID: user.uuid,
          providerName: '${user.lastName} ${user.firstName}',
          providerUrlAvatar: user.avatarUrl,
          providerAddress: user.addr,
          ratingStar: ratingStar,
          totalStarRating: totalStarRating,
        ),
        admin: (value) => throw NullThrownError(),
      );
}
