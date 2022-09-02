import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:revup_core/core.dart';

import '../../shared/fallbacks.dart';
import 'provider_raw_data.dart';

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
    required String phone,
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
        phone: user.phone,
      ),
      orElse: () => throw NullThrownError(),
    );
  }

  factory ProviderData.infoOnly(AppUser user) {
    return user.maybeMap(
      provider: (user) => ProviderData(
        id: user.uuid,
        fullName: '${user.firstName} ${user.lastName}',
        address: user.addr,
        avatar: user.avatarUrl.isEmpty ? kFallbackImage : user.avatarUrl,
        distance: 0,
        timeArrivalInMinute: 0,
        rating: 0,
        ratingCount: 0,
        backgroundImg: user.backgroundUrl.isEmpty
            ? kFallbackBackground
            : user.backgroundUrl,
        profileBio: user.bio,
        phone: user.phone,
      ),
      orElse: () => throw NullThrownError(),
    );
  }

  factory ProviderData.fromRawData(ProviderRawData raw) => ProviderData(
        id: raw.uuid,
        fullName: '${raw.firstName} ${raw.lastName}',
        address: raw.addr,
        avatar: raw.avatarUrl,
        distance: raw.distance,
        timeArrivalInMinute: raw.timeArrivalInMinute,
        rating: raw.rating,
        ratingCount: raw.ratingCount,
        backgroundImg: raw.backgroundUrl,
        profileBio: raw.bio,
        phone: raw.phone,
      );

  factory ProviderData.fromJson(Map<String, dynamic> json) =>
      _$ProviderDataFromJson(json);
}
