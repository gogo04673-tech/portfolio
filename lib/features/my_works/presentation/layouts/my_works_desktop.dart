import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/common/widgets/bio_text.dart';
import 'package:portfolio/common/widgets/headline_title.dart';
import 'package:portfolio/core/extensions/spacing_extension.dart';
import 'package:portfolio/core/extensions/theme_extension.dart';
import 'package:portfolio/features/my_works/presentation/bloc/my_works_cubit.dart';

class MyWorksDesktop extends StatelessWidget {
  const MyWorksDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MyWorksCubit(),
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
        ],
      ),
    );
  }
}

class _OptionBar extends StatelessWidget {
  const _OptionBar();

  @override
  Widget build(BuildContext context) {
    List<String> options = ['All', 'UI/UX Design', 'Development', 'Marking'];
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: List.generate((options.length), (i) {
        return BlocBuilder<MyWorksCubit, int>(
          builder: (context, state) {
            return _Option(
              title: options[i],
              isActive: state == i,
              onPressed: () {
                context.read<MyWorksCubit>().setMyWork(i);
              },
            );
          },
        );
      }),
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
