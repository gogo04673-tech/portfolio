import 'package:get_it/get_it.dart';
import 'package:portfolio/features/my_works/data/repositories/my_works_repo_impl.dart';
import 'package:portfolio/features/my_works/data/source/my_works_services.dart';
import 'package:portfolio/features/my_works/domain/repositories/my_works_repo.dart';
import 'package:portfolio/features/my_works/domain/use_cases/get_works.dart';
import 'package:portfolio/features/my_works/presentation/bloc/my_works_bloc.dart';

final GetIt sl = GetIt.instance;

class MyWorksServiceLocator {
  static init() async {
    // Services
    sl.registerLazySingleton<MyWorksServices>(() => MyWorksServicesImpl());

    // Repository
    sl.registerLazySingleton<MyWorksRepository>(
      () => MyWorksRepositoryImpl(sl()),
    );

    sl.registerLazySingleton<GetWorksUseCase>(() => GetWorksUseCase(sl()));

    // Bloc
    sl.registerFactory(() => MyWorksBloc(getWorks: sl()));
  }
}
