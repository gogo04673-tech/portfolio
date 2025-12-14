import 'package:shared_preferences/shared_preferences.dart';

class AppStorage {
  static SharedPreferences? _prefs;

  /// Initialize once in main()
  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  // READ
  static String? getString(String key) => _prefs?.getString(key);

  // WRITE
  static Future<void> setString(String key, String value) async {
    await _prefs?.setString(key, value);
  }

  // DELETE
  static Future<void> remove(String key) async {
    await _prefs?.remove(key);
  }
}
