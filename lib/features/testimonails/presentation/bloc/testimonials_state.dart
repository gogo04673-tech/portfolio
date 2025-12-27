import 'package:portfolio/core/errors/app_error.dart';
import 'package:portfolio/features/testimonails/domain/entities/testimonial_entity.dart';

abstract class TestimonialsState {}

class TestimonialsInitial extends TestimonialsState {}

class TestimonialsLoading extends TestimonialsState {}

class TestimonialsLoaded extends TestimonialsState {
  final List<TestimonialEntity> testimonials;
  TestimonialsLoaded(this.testimonials);
}

// class BudgetAdded extends TestimonialsState {
//   final int budgetId;
//   BudgetAdded(this.budgetId);
// }

// class BudgetDeleted extends TestimonialsState {
//   final int budgetId;
//   BudgetDeleted(this.budgetId);
// }

class TestimonialsError extends TestimonialsState {
  final AppError error;
  TestimonialsError(this.error);
}
