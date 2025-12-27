import 'package:dartz/dartz.dart';
import 'package:portfolio/core/errors/app_error.dart';
import 'package:portfolio/core/use_case/use_case.dart';
import 'package:portfolio/features/testimonails/domain/entities/testimonial_entity.dart';
import 'package:portfolio/features/testimonails/domain/repositories/testimonials_repo.dart';

class GetTestimonialsUseCase
    extends UseCase<Either<AppError, List<TestimonialEntity>>, dynamic> {
  final TestimonialsRepo repo;

  GetTestimonialsUseCase(this.repo);

  @override
  Future<Either<AppError, List<TestimonialEntity>>> call({params}) async {
    return await repo.getTestimonials();
  }
}
