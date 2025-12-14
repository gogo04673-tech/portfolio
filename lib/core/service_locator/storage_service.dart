import 'package:shared_preferences/shared_preferences.dart';

class StorageService {
  final SharedPreferences prefs;

  StorageService({required this.prefs});

  // Example helpers
  Future<void> saveString(String key, String value) async {
    await prefs.setString(key, value);
  }

  String? getString(String key) => prefs.getString(key);
}
