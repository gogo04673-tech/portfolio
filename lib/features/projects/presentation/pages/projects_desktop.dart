import 'package:flutter/material.dart';
import 'package:portfolio/common/components/texts/header_text.dart';
import 'package:portfolio/core/config/assets/app_images.dart';
import 'package:portfolio/features/projects/presentation/widgets/cart_project.dart';

class ProjectsDesktopPage extends StatelessWidget {
  const ProjectsDesktopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.only(top: 80),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          HeaderText(title1: "Latest", title2: "Projects"),

          SizedBox(height: 150),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CartProject(
                title: "Spendly",
                description:
                    'Spendly is your smart personal finance companion designed to help you take control of your money with clarity and confidence. With a clean interface and powerful features, Spendly makes it easy to track expenses, manage budgets, and understand your financial habits—all in one place.',
                image: AppImages.spendlyProject,
              ),

              CartProject(
                title: "title",
                description: 'description',
                image: AppImages.spendlyProject,
              ),

              CartProject(
                title: "title",
                description: 'description',
                image: AppImages.spendlyProject,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
