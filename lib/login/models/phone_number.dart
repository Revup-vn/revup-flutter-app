import 'package:freezed_annotation/freezed_annotation.dart';
part 'phone_number.freezed.dart';

@freezed
class PhoneNumber with _$PhoneNumber {
  const factory PhoneNumber({
    required String phoneNumber,
  }) = _PhoneNumber;
}
