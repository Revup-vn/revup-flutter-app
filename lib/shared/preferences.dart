import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Preferences {
  Preferences._(this._box);

  static const _preferencesBox = '_preferencesBox';
  static const _currentLocation = '_curentLocation';

  final Box<Object> _box;

  LatLng getSavedCurrentLocation() => _getValue(
        _currentLocation,
        defaultValue: const LatLng(0, 0),
      );

  Future<void> saveCurrentLocation(LatLng location) =>
      _setValue(_currentLocation, location);

  static Future<Preferences> getInstance() async {
    final box = await Hive.openBox<Object>(_preferencesBox);
    return Preferences._(box);
  }

  T _getValue<T>(String key, {required T defaultValue}) =>
      _box.get(key, defaultValue: defaultValue) as T;

  Future<void> _setValue(String key, Object value) => _box.put(key, value);
}
