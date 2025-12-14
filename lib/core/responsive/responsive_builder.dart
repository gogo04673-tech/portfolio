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
    final double width = MediaQuery.of(context).size.width;

    if (width < Breakpoints.mobile) {
      return mobile;
    } else if (width > Breakpoints.tablet) {
      return web;
    } else {
      return tablet;
    }
  }
}
