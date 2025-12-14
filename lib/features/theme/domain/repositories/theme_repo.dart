import 'package:portfolio/features/theme/domain/enum/theme_type.dart';

abstract class ThemeRepository {
  Future<ThemeType> getTheme();
  Future<void> saveTheme(ThemeType theme);
}
