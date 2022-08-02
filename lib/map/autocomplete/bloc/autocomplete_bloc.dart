import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uuid/uuid.dart';
import '../../../configs/map_config.dart';

import '../../models/place_autocomplete_model.dart';

part 'autocomplete_event.dart';
part 'autocomplete_state.dart';
part 'autocomplete_bloc.freezed.dart';

class AutocompleteBloc extends Bloc<AutocompleteEvent, AutocompleteState> {
  AutocompleteBloc() : super(const AutocompleteState.loading()) {
    on<AutocompleteEvent>(_onEvent);
  }

  FutureOr<void> _onEvent(
    AutocompleteEvent event,
    Emitter<AutocompleteState> emit,
  ) async {
    await event.when(
      started: (searchInput, location) async {
        final sessionToken = const Uuid().v4();
        final autocomplete = await getAutocomplete(
          searchInput,
          sessionToken,
          location,
        );
        emit(AutocompleteState.loaded(autocomplete: autocomplete));
      },
      clear: () {
        emit(AutocompleteState.loaded(autocomplete: List.empty()));
      },
    );
  }

  Future<List<PlaceAutocomplete>> getAutocomplete(
    String searchInput,
    String sessionToken,
    LatLng location,
  ) async {
    final url =
        'https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$searchInput&types=address&language=vi&components=country:vn&location=${location.latitude},${location.longitude}&key=$ggMapKey&sessiontoken=$sessionToken';

    final response = await Dio().get<Map<String, dynamic>>(url);

    final places = List<Map<dynamic, dynamic>>.from(
      response.data!['predictions'] as List,
    )
        .map(
          (jsonMap) =>
              PlaceAutocomplete.fromJson(Map<String, dynamic>.from(jsonMap)),
        )
        .toList();

    return places;
  }
}
