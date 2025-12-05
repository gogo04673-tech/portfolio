import 'package:flutter/material.dart';
import 'package:portfolio/features/home/presentation/pages/home_mobile.dart';
import 'package:portfolio/features/home/presentation/pages/home_tablet.dart';
import 'package:portfolio/features/portfolio_view/presentation/pages/portfolio_desktop.dart';
import 'package:portfolio/features/responsive_framework/presentation/pages/responsive_framework.dart';

class AppLayout extends StatefulWidget {
  const AppLayout({super.key});

  @override
  State<AppLayout> createState() => _AppLayoutState();
}

class _AppLayoutState extends State<AppLayout> {
  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobileBody: HomeMobilePage(),
      desktopBody: PortfolioDesktop(),
      tabletBody: HomeTabletPage(),
    );
  }
}
