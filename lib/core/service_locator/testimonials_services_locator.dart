import 'package:get_it/get_it.dart';
import 'package:portfolio/features/testimonails/data/repositories/testimonials_repo.dart';
import 'package:portfolio/features/testimonails/data/source/testimonials_service.dart';
import 'package:portfolio/features/testimonails/domain/repositories/testimonials_repo.dart';
import 'package:portfolio/features/testimonails/domain/use_cases/get_testimonials.dart';
import 'package:portfolio/features/testimonails/presentation/bloc/testimonials_bloc.dart';

final GetIt sl = GetIt.instance;

class TestimonialsServicesLocator {
  static init() async {
    // Services
    sl.registerLazySingleton<TestimonialsService>(
      () => TestimonialsServiceImp(),
    );

    // Repository
    sl.registerLazySingleton<TestimonialsRepo>(
      () => TestimonialsRepoImpl(sl()),
    );

    sl.registerLazySingleton<GetTestimonialsUseCase>(
      () => GetTestimonialsUseCase(sl()),
    );

    // Bloc
    sl.registerFactory(() => TestimonialsBloc(getTestimonials: sl()));
  }
}
