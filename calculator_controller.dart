import 'package:shared_preferences/shared_preferences.dart';

class StorageService {
  static late SharedPreferences _prefs;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static bool getBool(String key, bool def) =>
      _prefs.getBool(key) ?? def;

  static Future<void> setBool(String key, bool value) async =>
      _prefs.setBool(key, value);
}
