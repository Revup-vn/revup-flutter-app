import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:revup_core/core.dart';

part 'record_rating_data.freezed.dart';

@freezed
class RecordRatingData with _$RecordRatingData {
  const factory RecordRatingData({
    required String id,
    required String cid,
    required Feedback feedback,
  }) = _RecordRatingData;

  factory RecordRatingData.fromDtos(RepairRecord record) {
    return record.maybeMap(
      orElse: () => throw NullThrownError(),
      finished: (record) => RecordRatingData(
        id: record.id,
        cid: record.cid,
        feedback: record.feedback,
      ),
    );
  }
}
