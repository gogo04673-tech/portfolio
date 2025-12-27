import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

import 'package:portfolio/core/responsive/breakpoints.dart';
import 'package:portfolio/features/services/presentation/bloc/services_state.dart';
import 'package:portfolio/features/services/presentation/bloc/services_event.dart';
import 'package:portfolio/features/services/presentation/widgets/card_service.dart';

class WrapSpecialties extends StatelessWidget {
  const WrapSpecialties({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Breakpoints.isMobile ? null : 1140,
      child: BlocBuilder<ServicesBloc, ServicesState>(
        builder: (context, state) {
          final bool isLoading = state is ServicesLoading;

          return Skeletonizer(
            enabled: isLoading,
            child: SingleChildScrollView(
              scrollDirection: Breakpoints.isMobile
                  ? Axis.horizontal
                  : Axis.vertical,
              physics: Breakpoints.isMobile
                  ? null
                  : const NeverScrollableScrollPhysics(),
              child: Wrap(
                spacing: 24,
                runSpacing: 24,

                children: isLoading
                    // 🔹 Skeleton placeholders
                    ? List.generate(6, (_) => const CardServiceSkeleton())
                    // 🔹 Real data
                    : state is ServicesLoaded
                    ? state.services.map((s) => CardService(s)).toList()
                    : [],
              ),
            ),
          );
        },
      ),
    );
  }
}

class CardServiceSkeleton extends StatelessWidget {
  const CardServiceSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 284,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF).withValues(alpha: .08),
        borderRadius: BorderRadius.circular(24),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Bone.circle(size: 40),
          SizedBox(height: 16),
          Bone.text(width: 120),
          SizedBox(height: 8),
          Bone.text(width: 180),
          SizedBox(height: 12),
          Bone.text(width: 140),
        ],
      ),
    );
  }
}
