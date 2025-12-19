import 'package:flutter/material.dart';
import 'package:portfolio/features/portfolio/presentation/widgets/app_bar_portfolio.dart';
import 'package:portfolio/features/portfolio/presentation/widgets/circle_background.dart';

class PortfolioPage extends StatelessWidget {
  final Widget widget;
  const PortfolioPage({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarPortfolio(),

      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),

        child: Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [const CircleBackground(), widget],
        ),
      ),
    );
  }
}
