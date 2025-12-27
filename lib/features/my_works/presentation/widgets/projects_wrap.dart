import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/core/responsive/breakpoints.dart';
import 'package:portfolio/features/my_works/domain/entities/work_entity.dart';
import 'package:portfolio/features/my_works/domain/enum/my_works_enum.dart';
import 'package:portfolio/features/my_works/presentation/bloc/my_works_bloc.dart';
import 'package:portfolio/features/my_works/presentation/bloc/my_works_cubit.dart';
import 'package:portfolio/features/my_works/presentation/bloc/my_works_state.dart';
import 'package:portfolio/features/my_works/presentation/widgets/project_card.dart';
import 'package:portfolio/features/services/presentation/widgets/wrap_specialties.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ProjectsWrap extends StatelessWidget {
  const ProjectsWrap({super.key});

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
