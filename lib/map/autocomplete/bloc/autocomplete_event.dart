part of 'autocomplete_bloc.dart';

@freezed
class AutocompleteEvent with _$AutocompleteEvent {
  const factory AutocompleteEvent.started({
    required String searchInput,
    required Position location,
  }) = _Started;
  const factory AutocompleteEvent.clear() = _Clear;
}
