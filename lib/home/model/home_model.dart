import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:revup_core/core.dart';

part 'home_model.freezed.dart';

@freezed
class HomeModel with _$HomeModel {
  factory HomeModel({
    required String providerName,
    required String imageUrl,
    required int serviceType,
    required int rating,
    required DateTime created,
  }) = _HomeModel;
  factory HomeModel.fromDTO(
    AppUser user,
    RepairRecord rp,
  ) =>
      HomeModel(
        providerName: '${user.firstName} ${user.lastName}',
        imageUrl: user.avatarUrl,
        created: rp.created,
        rating: rp.maybeMap(
          orElse: () => 0,
          finished: (value) => value.feedback?.rating ?? 0,
        ),
        serviceType: rp.vehicle == 'motorbike' ? 0 : 1,
      );
}
