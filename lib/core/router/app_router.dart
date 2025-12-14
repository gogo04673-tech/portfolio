import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/features/dashboard/presentation/pages/dashboard_page.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/home',
  routes: [
    GoRoute(path: '/home', builder: (context, state) => const DashboardPage()),
    GoRoute(path: '/about', builder: (context, state) => const Center()),
    GoRoute(path: '/projects', builder: (context, state) => const Center()),
    // GoRoute(
    //   path: '/project/:slug',
    //   builder: (context, state) {
    //     final slug = state.pathParameters['slug']!;
    //     return ProjectDetailsPage(slug: slug);
    //   },
    // ),
    GoRoute(path: '/contact', builder: (context, state) => const Center()),
  ],
);
