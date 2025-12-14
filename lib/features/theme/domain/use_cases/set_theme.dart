import 'package:portfolio/core/use_case/use_case.dart';
import 'package:portfolio/features/theme/domain/enum/theme_type.dart';
import 'package:portfolio/features/theme/domain/repositories/theme_repo.dart';

class SetThemeUseCase extends UseCase<void, ThemeType> {
  final ThemeRepository themeRepository;

  SetThemeUseCase(this.themeRepository);

  @override
  Future<void> call({ThemeType? params}) async {
    return await themeRepository.saveTheme(params!);
  }
}
