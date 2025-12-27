import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/core/responsive/responsive_builder.dart';
import 'package:portfolio/core/service_locator/localization_service_locator.dart';
import 'package:portfolio/features/testimonails/presentation/bloc/testimonials_bloc.dart';
import 'package:portfolio/features/testimonails/presentation/bloc/testimonials_event.dart';
import 'package:portfolio/features/testimonails/presentation/layouts/testimonials_desktop.dart';
import 'package:portfolio/features/testimonails/presentation/layouts/testimonials_mobile.dart';
import 'package:portfolio/features/testimonails/presentation/layouts/testimonials_tablet.dart';

class TestimonialsPage extends StatelessWidget {
  const TestimonialsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<TestimonialsBloc>()..add(LoadTestimonials()),

      child: const ResponsiveBuilder(
        mobile: TestimonialsMobile(),
        tablet: TestimonialsTablet(),
        web: TestimonialsDesktop(),
      ),
    );
  }
}
