import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:revup_core/core.dart';

import '../../shared/fallbacks.dart';

part 'provider_data.u.freezed.dart';
part 'provider_data.u.g.dart';

@freezed
class ProviderData with _$ProviderData {
  factory ProviderData({
    required String id,
    required String fullName,
    required String address,
    required String avatar,
    required double distance,
    required double timeArrivalInMinute,
    required double rating,
    required int ratingCount,
    required String backgroundImg,
    required String profileBio,
  }) = _ProviderData;

  factory ProviderData.fromDtos(
    AppUser user, {
    required double distance,
    required double duration,
    required double rating,
    required int ratingCount,
  }) {
    return user.maybeMap(
      provider: (user) => ProviderData(
        id: user.uuid,
        fullName: '${user.firstName} ${user.lastName}',
        address: user.addr,
        avatar: user.avatarUrl.isEmpty ? kFallbackImage : user.avatarUrl,
        distance: distance / 1000,
        timeArrivalInMinute: duration / 60,
        rating: rating,
        ratingCount: ratingCount,
        backgroundImg: user.backgroundUrl.isEmpty
            ? kFallbackBackground
            : user.backgroundUrl,
        profileBio: user.bio,
      ),
      orElse: () => throw NullThrownError(),
    );
  }

  factory ProviderData.fromJson(Map<String, dynamic> json) =>
      _$ProviderDataFromJson(json);
}
