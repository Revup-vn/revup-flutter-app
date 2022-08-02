import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:revup_core/core.dart';

import '../../shared/fallbacks.dart';

part 'provider_data.u.freezed.dart';

@freezed
class ProviderData with _$ProviderData {
  factory ProviderData({
    required String id,
    required String fullName,
    required String address,
    required String avatar,
    required double distance,
    required double timeArrivalInMinute,
    required double numberStarRating,
    required int totalRating,
    required String backgroundImg,
    required String profileBio,
  }) = _ProviderData;

  factory ProviderData.fromDtos(AppUser user) => user.map(
        consumer: (user) => throw NullThrownError(),
        provider: (user) => ProviderData(
          id: user.uuid,
          fullName: '${user.firstName} ${user.lastName}',
          address: user.addr,
          avatar: user.avatarUrl.isEmpty ? kFallbackImage : user.avatarUrl,
          distance: 500,
          timeArrivalInMinute: 10,
          numberStarRating: 4,
          totalRating: 100,
          backgroundImg: user.backgroundUrl.isEmpty
              ? kFallbackBackground
              : user.backgroundUrl,
          profileBio: user.bio,
        ),
        admin: (user) => throw NullThrownError(),
      );
}
