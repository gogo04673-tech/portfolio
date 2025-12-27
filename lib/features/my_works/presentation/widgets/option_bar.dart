import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/core/extensions/theme_extension.dart';
import 'package:portfolio/features/my_works/domain/enum/my_works_enum.dart';
import 'package:portfolio/features/my_works/presentation/bloc/my_works_cubit.dart';

class OptionBar extends StatelessWidget {
  const OptionBar({super.key});

  @override
  Widget build(BuildContext context) {
    final options = {
      MyWorksEnum.all: 'All',
      MyWorksEnum.design: 'UI/UX Design',
      MyWorksEnum.development: 'Development',
      // MyWorksEnum.marketing: 'Marketing',
    };
    return SizedBox(
      height: 40,
      child: Center(
        child: ListView(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,

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
        ),
      ),
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
