part of 'choose_product_bloc.u.dart';

@freezed
class ChooseProductEvent with _$ChooseProductEvent {
  const factory ChooseProductEvent.started() = Started;
  const factory ChooseProductEvent.submitted(String? groupValue) = Submitted;
}
