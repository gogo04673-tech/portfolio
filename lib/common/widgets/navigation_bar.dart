import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/common/data/app_sections.dart';
import 'package:portfolio/common/widgets/hover_text.dart';
import 'package:portfolio/features/portfolio_view/presentation/bloc/page_cubit.dart';

class TopNavigationBar extends StatelessWidget implements PreferredSizeWidget {
  final PageController pageController;
  const TopNavigationBar({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 30),
        child: Row(
          children: [
            Text(
              "Mohammed.",
              style: Theme.of(
                context,
              ).textTheme.headlineLarge!.copyWith(fontSize: 22),
            ),

            const Spacer(),

            ...List.generate(
              (AppSections.list.length),
              (i) => HoverText(
                title: AppSections.list[i],
                isActive: context.watch<PageCubit>().state == i,
                onTap: () => goToPage(context, i),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void goToPage(BuildContext context, int index) {
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );

    context.read<PageCubit>().setPage(index);
  }

  @override
  Size get preferredSize => const Size.fromHeight(120);
}
