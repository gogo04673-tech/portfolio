import 'package:dartz/dartz.dart';
import 'package:portfolio/core/errors/app_error.dart';
import 'package:portfolio/features/testimonails/data/mappers/testimonials_mapper.dart';
import 'package:portfolio/features/testimonails/data/models/testimonial_model.dart';
import 'package:portfolio/features/testimonails/data/source/testimonials_service.dart';
import 'package:portfolio/features/testimonails/domain/entities/testimonial_entity.dart';
import 'package:portfolio/features/testimonails/domain/repositories/testimonials_repo.dart';

class TestimonialsRepoImpl implements TestimonialsRepo {
  final TestimonialsService services;

  TestimonialsRepoImpl(this.services);

  @override
  Future<Either<AppError, List<TestimonialEntity>>> getTestimonials() async {
    final result = await services.getTestimonials();

    return result.fold((error) => Left(error), (data) {
      final List<TestimonialEntity> testimonials = data
          .map((t) => TestimonialsMapper.toEntity(TestimonialModel.fromJson(t)))
          .toList();

      return Right(testimonials);
    });
  }
}
