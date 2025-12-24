import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/common/widgets/bio_text.dart';
import 'package:portfolio/common/widgets/headline_title.dart';
import 'package:portfolio/core/extensions/spacing_extension.dart';
import 'package:portfolio/core/extensions/theme_extension.dart';
import 'package:portfolio/core/responsive/breakpoints.dart';
import 'package:portfolio/core/service_locator/main_service_locator.dart';
import 'package:portfolio/features/my_works/domain/entities/work_entity.dart';
import 'package:portfolio/features/my_works/domain/enum/my_works_enum.dart';
import 'package:portfolio/features/my_works/presentation/bloc/my_works_bloc.dart';
import 'package:portfolio/features/my_works/presentation/bloc/my_works_cubit.dart';
import 'package:portfolio/features/my_works/presentation/bloc/my_works_event.dart';
import 'package:portfolio/features/my_works/presentation/bloc/my_works_state.dart';
import 'package:portfolio/features/my_works/presentation/widgets/project_card.dart';
import 'package:portfolio/features/services/presentation/widgets/wrap_specialties.dart';
import 'package:skeletonizer/skeletonizer.dart';

class MyWorksDesktop extends StatelessWidget {
  const MyWorksDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => MyWorksCubit()),
        BlocProvider(create: (_) => sl<MyWorksBloc>()..add(LoadWorks())),
      ],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          context.spacing.xxl64.h,
          const HeadlineTitle(gradientText: 'Portfolio', isMedium: true),
          const HeadlineTitle(gradientText: 'My', text: " Works"),

          context.spacing.md.h,
          const BioText(
            bio:
                'If you’re interested in working together, have projects in mind, or simply want to connect feel free to reach out through the form to the right or via the contact information provided.',
          ),

          context.spacing.xl.h,
          const _OptionBar(),

          context.spacing.xl.h,
          const ProjectsCards(),
        ],
      ),
    );
  }
}

class _OptionBar extends StatelessWidget {
  const _OptionBar();

  @override
  Widget build(BuildContext context) {
    final options = {
      MyWorksEnum.all: 'All',
      MyWorksEnum.design: 'UI/UX Design',
      MyWorksEnum.development: 'Development',
      MyWorksEnum.marketing: 'Marketing',
    };
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: options.entries.map((entry) {
        return BlocBuilder<MyWorksCubit, MyWorksEnum>(
          builder: (context, activeFilter) {
            return _Option(
              title: entry.value,
              isActive: activeFilter == entry.key,
              onPressed: () {
                context.read<MyWorksCubit>().setFilter(entry.key);
              },
            );
          },
        );
      }).toList(),
    );
  }
}

class _Option extends StatelessWidget {
  final String title;
  final bool isActive;
  final VoidCallback onPressed;
  const _Option({
    required this.title,
    required this.isActive,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: TextButton(
        onPressed: onPressed,

        style: ButtonStyle(
          padding: WidgetStateProperty.all(
            const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
          ),
          backgroundColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.hovered) && !isActive) {
              return const Color(0xFFFFFFFF).withValues(alpha: .012);
            }
            return const Color(
              0xFFFFFFFF,
            ).withValues(alpha: isActive ? null : .08);
          }),
        ),
        child: Text(
          title,
          style: context.textTheme.headlineSmall!.copyWith(
            color: isActive
                ? Colors.black
                : Colors.white.withValues(alpha: .70),
          ),
        ),
      ),
    );
  }
}

class ProjectsCards extends StatelessWidget {
  const ProjectsCards({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Breakpoints.isMobile ? null : 1140,
      child: BlocBuilder<MyWorksBloc, MyWorksState>(
        builder: (context, worksState) {
          if (worksState is WorksLoading) {
            return Skeletonizer(
              enabled: true,
              child: Wrap(
                spacing: 24,
                runSpacing: 24,
                children: List.generate(6, (_) => const CardServiceSkeleton()),
              ),
            );
          }

          if (worksState is WorksLoaded) {
            return BlocBuilder<MyWorksCubit, MyWorksEnum>(
              builder: (context, filter) {
                final filteredWorks = _filterWorks(worksState.works, filter);

                return Wrap(
                  spacing: 24,
                  runSpacing: 24,
                  children: filteredWorks
                      .map((w) => ProjectCard(work: w))
                      .toList(),
                );
              },
            );
          }

          return const SizedBox.shrink();
        },
      ),
    );
  }

  List<WorkEntity> _filterWorks(List<WorkEntity> works, MyWorksEnum filter) {
    switch (filter) {
      case MyWorksEnum.design:
        return works.where((w) => w.type == 'UI/UX Design').toList();
      case MyWorksEnum.development:
        return works.where((w) => w.type == 'Development').toList();
      case MyWorksEnum.marketing:
        return works.where((w) => w.type == 'Marketing').toList();
      case MyWorksEnum.all:
        return works;
    }
  }
}
