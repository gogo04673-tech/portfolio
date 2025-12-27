import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/common/widgets/bio_text.dart';
import 'package:portfolio/common/widgets/headline_title.dart';
import 'package:portfolio/core/extensions/spacing_extension.dart';
import 'package:portfolio/core/extensions/theme_extension.dart';
import 'package:portfolio/core/service_locator/main_service_locator.dart';
import 'package:portfolio/features/my_works/presentation/bloc/my_works_bloc.dart';
import 'package:portfolio/features/my_works/presentation/bloc/my_works_cubit.dart';
import 'package:portfolio/features/my_works/presentation/bloc/my_works_event.dart';
import 'package:portfolio/features/my_works/presentation/widgets/option_bar.dart';
import 'package:portfolio/features/my_works/presentation/widgets/projects_wrap.dart';

class MyWorksMobile extends StatelessWidget {
  const MyWorksMobile({super.key});

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
          const OptionBar(),

          context.spacing.xl.h,
          const ProjectsWrap(),
        ],
      ),
    );
  }
}
