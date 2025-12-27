import 'package:dartz/dartz.dart';
import 'package:portfolio/core/errors/app_error.dart';
import 'package:portfolio/features/testimonails/domain/entities/testimonial_entity.dart';

abstract class TestimonialsRepo {
  Future<Either<AppError, List<TestimonialEntity>>> getTestimonials();
}
