import 'package:portfolio/features/theme/data/source/theme_service.dart';
import 'package:portfolio/features/theme/domain/enum/theme_type.dart';
import 'package:portfolio/features/theme/domain/repositories/theme_repo.dart';

class ThemeRepositoryImpl implements ThemeRepository {
  final ThemeServices themeServices;

  ThemeRepositoryImpl({required this.themeServices});

  @override
  Future<ThemeType> getTheme() async {
    return await themeServices.getTheme();
  }

  @override
  Future<void> saveTheme(ThemeType theme) async {
    return await themeServices.saveTheme(theme);
  }
}
