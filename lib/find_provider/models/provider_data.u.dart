import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:revup_core/core.dart';

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

  factory ProviderData.fromDtos(AppUser user) => ProviderData(
        id: user.uuid,
        fullName: '${user.firstName} ${user.lastName}',
        address: user.addr,
        avatar: user.avatarUrl,
        distance: 0,
        timeArrivalInMinute: 0,
        numberStarRating: 0,
        totalRating: 0,
        backgroundImg: '',
        profileBio: '',
      );
}
