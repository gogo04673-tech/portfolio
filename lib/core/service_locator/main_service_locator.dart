import 'package:get_it/get_it.dart';
import 'package:portfolio/core/service_locator/localization_service_locator.dart';
import 'package:portfolio/core/service_locator/theme_service_locator.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'storage_service.dart';

final GetIt sl = GetIt.instance;

class MainServiceLocator {
  static Future<void> init() async {
    // Initialize SharedPreferences
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    // Register StorageService
    sl.registerLazySingleton<StorageService>(
      () => StorageService(prefs: prefs),
    );

    // You can now register other features (Auth, Theme, Budget...) here
    ThemeServiceLocator.init();
    LocalizationServiceLocator.init();
  }
}
