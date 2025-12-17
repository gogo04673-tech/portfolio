import 'package:flutter/material.dart';
import 'package:portfolio/core/responsive/breakpoints.dart';

class ResponsiveBuilder extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget web;
  const ResponsiveBuilder({
    super.key,
    required this.mobile,
    required this.tablet,
    required this.web,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < Breakpoints.mobile) {
          return mobile;
        } else if (constraints.maxWidth >= Breakpoints.mobile &&
            constraints.maxWidth <= Breakpoints.tablet) {
          return tablet;
        } else {
          return web;
        }
      },
    );
  }
}
