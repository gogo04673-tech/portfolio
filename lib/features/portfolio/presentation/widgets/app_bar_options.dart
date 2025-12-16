import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/common/widgets/hover_text.dart';
import 'package:portfolio/features/portfolio/domain/utils/list_options.dart';
import 'package:portfolio/features/portfolio/presentation/bloc/section_cubit.dart';

class AppBarSections extends StatelessWidget {
  const AppBarSections({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SectionCubit(),
      child: Row(
        children: List.generate(LisSections.list(context).length, (i) {
          final String section = LisSections.list(context)[i];

          return BlocBuilder<SectionCubit, int>(
            builder: (context, state) {
              return _TextSection(
                title: section,
                isActive: state == i,
                onTap: () {
                  context.read<SectionCubit>().setSection(i);
                },
              );
            },
          );
        }),
      ),
    );
  }
}

class _TextSection extends StatelessWidget {
  final String title;
  final bool isActive;
  final VoidCallback onTap;

  const _TextSection({
    required this.title,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          if (isActive)
            CircleAvatar(
              radius: 20.r,
              backgroundColor: theme.colorScheme.secondary,
            ),

          const SizedBox(width: 6),

          //
          HoverText(title: title, isActive: isActive, onTap: onTap),
        ],
      ),
    );
  }
}
