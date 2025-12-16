import 'package:get_it/get_it.dart';
import 'package:portfolio/features/localization/data/repositories/localization_repo.dart';
import 'package:portfolio/features/localization/data/source/localization_service.dart';
import 'package:portfolio/features/localization/domain/repositories/localization.dart';
import 'package:portfolio/features/localization/domain/use_cases/get_saved_local.dart';
import 'package:portfolio/features/localization/domain/use_cases/set_saved_local.dart';
import 'package:portfolio/features/localization/presentation/bloc/language_bloc.dart';

final GetIt sl = GetIt.instance;

class LocalizationServiceLocator {
  static void init() {
    sl.registerLazySingleton<LocalizationService>(
      () => LocalizationServiceImpl(sl()),
    );

    sl.registerLazySingleton<LocalizationRepository>(
      () => LocalizationRepositoryImpl(sl()),
    );

    sl.registerLazySingleton<GetSavedLocalUseCase>(
      () => GetSavedLocalUseCase(sl()),
    );
    sl.registerLazySingleton<SetSavedLocalUseCase>(
      () => SetSavedLocalUseCase(sl()),
    );

    sl.registerFactory(() => LanguageBloc(getLocal: sl(), setLocal: sl()));
  }
}
