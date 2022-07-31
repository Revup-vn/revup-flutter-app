import 'package:hive/hive.dart';

class Preferences {
  Preferences._(this._box);

  static const _preferencesBox = '_preferencesBox';
  static const _latitude = '_latitude';
  static const _longitude = '_longitude';

  final Box<Object> _box;

  static Future<Preferences> getInstance() async {
    final box = await Hive.openBox<Object>(_preferencesBox);
    return Preferences._(box);
  }

  T _getValue<T>(String key, {required T defaultValue}) =>
      _box.get(key, defaultValue: defaultValue) as T;

  Future<void> _setValue(String key, Object value) => _box.put(key, value);
}
