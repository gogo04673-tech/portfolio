import 'package:portfolio/core/service_locator/storage_service.dart';
import 'package:portfolio/core/storage/storage_keys.dart';
import 'package:portfolio/features/theme/domain/enum/theme_type.dart';

abstract class ThemeServices {
  Future<ThemeType> getTheme();
  Future<void> saveTheme(ThemeType theme);
}

// * implements Theme services
class ThemeServicesImpl implements ThemeServices {
  final StorageService storage;

  ThemeServicesImpl({required this.storage});

  @override
  Future<ThemeType> getTheme() async {
    final String? saved = storage.getString(StorageKeys.theme);

    return ThemeType.values.firstWhere(
      (e) => e.name == saved,
      orElse: () => ThemeType.system,
    );
  }

  @override
  Future<void> saveTheme(ThemeType theme) async {
    final String themeString = theme.name;

    await storage.saveString(StorageKeys.theme, themeString);
  }
}
