import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/features/dashboard/presentation/pages/dashboard_page.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/home',
    routes: [
      GoRoute(
        path: '/home',
        builder: (context, state) => const DashboardPage(),
      ),
      GoRoute(path: '/about', builder: (context, state) => const Center()),
      GoRoute(path: '/projects', builder: (context, state) => const Center()),
      GoRoute(path: '/contact', builder: (context, state) => const Center()),
    ],
  );
}
