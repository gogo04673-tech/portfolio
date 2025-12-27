import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/features/testimonails/presentation/bloc/testimonials_bloc.dart';
import 'package:portfolio/features/testimonails/presentation/bloc/testimonials_state.dart';
import 'package:portfolio/features/testimonails/presentation/widgets/testimonial_skeleton.dart';
import 'package:portfolio/features/testimonails/presentation/widgets/testimonials_card.dart';
import 'package:skeletonizer/skeletonizer.dart';

import 'package:portfolio/core/responsive/breakpoints.dart';

class TestimonialsWrap extends StatelessWidget {
  const TestimonialsWrap({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Breakpoints.isMobile ? null : 1140,
      child: BlocBuilder<TestimonialsBloc, TestimonialsState>(
        builder: (context, state) {
          final bool isLoading = state is TestimonialsLoading;

          return Skeletonizer(
            enabled: isLoading,
            child: Wrap(
              spacing: 24,
              runSpacing: 24,
              alignment: WrapAlignment.center,
              children: isLoading
                  // 🔹 Skeleton placeholders
                  ? List.generate(6, (_) => const TestimonialSkeleton())
                  // 🔹 Real data
                  : state is TestimonialsLoaded
                  ? state.testimonials.map((t) => TestimonialCards(t)).toList()
                  : [],
            ),
          );
        },
      ),
    );
  }
}
