import 'package:flutter/material.dart';
import 'package:portfolio/core/responsive/responsive_builder.dart';
import 'package:portfolio/features/my_works/presentation/layouts/my_works_desktop.dart';
import 'package:portfolio/features/my_works/presentation/layouts/my_works_mobile.dart';
import 'package:portfolio/features/my_works/presentation/layouts/my_works_tablet.dart';

class MyWorksPage extends StatelessWidget {
  const MyWorksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveBuilder(
      mobile: MyWorksMobile(),
      tablet: MyWorksTablet(),
      web: MyWorksDesktop(),
    );
  }
}
