import 'package:flutter/material.dart';
import 'package:portfolio/features/about/presentation/pages/about.dart';
import 'package:portfolio/features/home/presentation/pages/home.dart';
import 'package:portfolio/features/services/presentation/pages/services.dart';

class DashboardMobile extends StatelessWidget {
  const DashboardMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HomePage(),
        AboutPage(),
        ServicesPage(),
        SizedBox(height: 500),
      ],
    );
  }
}
