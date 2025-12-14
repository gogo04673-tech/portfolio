import 'package:get_it/get_it.dart';
import 'package:portfolio/features/theme/data/repositories/theme_repo_impl.dart';
import 'package:portfolio/features/theme/data/source/theme_service.dart';
import 'package:portfolio/features/theme/domain/repositories/theme_repo.dart';
import 'package:portfolio/features/theme/domain/use_cases/get_theme.dart';
import 'package:portfolio/features/theme/domain/use_cases/set_theme.dart';
import 'package:portfolio/features/theme/presentation/bloc/theme_bloc.dart';

final GetIt sl = GetIt.instance;

class ThemeServiceLocator {
  static Future<void> init() async {
    // Services
    sl.registerLazySingleton<ThemeServices>(
      () => ThemeServicesImpl(storage: sl()),
    );

    // Repository
    sl.registerLazySingleton<ThemeRepository>(
      () => ThemeRepositoryImpl(themeServices: sl()),
    );

    sl.registerLazySingleton<GetThemeUseCase>(() => GetThemeUseCase(sl()));
    sl.registerLazySingleton<SetThemeUseCase>(() => SetThemeUseCase(sl()));

    // Bloc
    sl.registerFactory(() => ThemeBloc(getTheme: sl(), setTheme: sl()));
  }
}
