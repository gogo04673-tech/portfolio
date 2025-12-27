import 'package:portfolio/features/testimonails/data/models/testimonial_model.dart';
import 'package:portfolio/features/testimonails/domain/entities/testimonial_entity.dart';

class TestimonialsMapper {
  static TestimonialEntity toEntity(TestimonialModel testimonial) {
    return TestimonialEntity(
      id: testimonial.id,
      name: testimonial.name,
      bio: testimonial.bio,
      image: testimonial.image,
      job: testimonial.job,
    );
  }
}
