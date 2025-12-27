import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/features/testimonails/domain/use_cases/get_testimonials.dart';
import 'package:portfolio/features/testimonails/presentation/bloc/testimonials_event.dart';
import 'package:portfolio/features/testimonails/presentation/bloc/testimonials_state.dart';

class TestimonialsBloc extends Bloc<TestimonialsEvent, TestimonialsState> {
  final GetTestimonialsUseCase getTestimonials;
  TestimonialsBloc({required this.getTestimonials})
    : super(TestimonialsInitial()) {
    on<LoadTestimonials>(_onGetTestimonials);
  }

  Future<void> _onGetTestimonials(
    LoadTestimonials event,
    Emitter<TestimonialsState> emit,
  ) async {
    emit(TestimonialsLoading());
    final result = await getTestimonials.call();
    result.fold(
      (error) => emit(TestimonialsError(error)),
      (testimonials) => emit(TestimonialsLoaded(testimonials)),
    );
  }
}
