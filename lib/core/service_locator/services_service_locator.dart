import 'package:get_it/get_it.dart';
import 'package:portfolio/features/services/data/repositories/services_impl.dart';
import 'package:portfolio/features/services/data/sources/services.dart';
import 'package:portfolio/features/services/domain/repositories/services_repo.dart';
import 'package:portfolio/features/services/domain/use_cases/get_services.dart';
import 'package:portfolio/features/services/presentation/bloc/services_event.dart';

final GetIt sl = GetIt.instance;

class ServicesServiceLocator {
  static init() async {
    // Services
    sl.registerLazySingleton<ServicesService>(() => ServicesServiceImp());

    // Repository
    sl.registerLazySingleton<ServicesRepository>(
      () => ServicesRepositoryImp(sl()),
    );

    sl.registerLazySingleton<GetServicesUseCase>(
      () => GetServicesUseCase(sl()),
    );

    // Bloc
    sl.registerFactory(() => ServicesBloc(getServices: sl()));
  }
}
