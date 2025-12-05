import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/common/widgets/navigation_bar.dart';
import 'package:portfolio/features/about/presentation/pages/about_desktop.dart';
import 'package:portfolio/features/home/presentation/pages/home_desktop.dart';
import 'package:portfolio/features/portfolio_view/presentation/bloc/page_cubit.dart';
import 'package:portfolio/features/projects/presentation/pages/projects_desktop.dart';
import 'package:portfolio/features/services/presentation/pages/services_desktop.dart';
import 'package:portfolio/features/skills/presentation/pages/skills_desktop.dart';

class PortfolioDesktop extends StatefulWidget {
  const PortfolioDesktop({super.key});

  @override
  State<PortfolioDesktop> createState() => _PortfolioDesktopState();
}

class _PortfolioDesktopState extends State<PortfolioDesktop> {
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopNavigationBar(pageController: _pageController),
      body: PageView(
        controller: _pageController,
        scrollDirection: Axis.vertical,
        onPageChanged: (index) => context.read<PageCubit>().setPage(index),
        children: const [
          HomeDesktopPage(),
          AboutDesktopPage(),
          ServicesDesktopPage(),
          SkillsDesktopPage(),
          ProjectsDesktopPage(),
          Scaffold(),
        ],
      ),
    );
  }
}
