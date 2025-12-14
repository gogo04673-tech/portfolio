import 'package:portfolio/core/use_case/use_case.dart';
import 'package:portfolio/features/theme/domain/enum/theme_type.dart';
import 'package:portfolio/features/theme/domain/repositories/theme_repo.dart';

class GetThemeUseCase extends UseCase<ThemeType, dynamic> {
  final ThemeRepository themeRepository;

  GetThemeUseCase(this.themeRepository);

  @override
  Future<ThemeType> call({params}) async {
    return await themeRepository.getTheme();
  }
}
