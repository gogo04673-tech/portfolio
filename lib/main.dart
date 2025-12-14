import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/core/config/theme/app_theme.dart';
import 'package:portfolio/core/router/app_router.dart';
import 'package:portfolio/core/service_locator/main_service_locator.dart';
import 'package:portfolio/features/dashboard/presentation/pages/dashboard_page.dart';
import 'package:portfolio/features/portfolio_view/presentation/bloc/page_cubit.dart';
import 'package:portfolio/features/theme/domain/enum/theme_type.dart';
import 'package:portfolio/features/theme/domain/utils/theme_utils.dart';
import 'package:portfolio/features/theme/presentation/bloc/theme_bloc.dart';
import 'package:portfolio/features/theme/presentation/bloc/theme_event.dart';
import 'package:portfolio/features/theme/presentation/bloc/theme_state.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await MainServiceLocator.init();

  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => sl<ThemeBloc>()..add(GetThemeEvent())),
        BlocProvider(create: (_) => PageCubit()),
      ],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, themeState) {
        return ScreenUtilInit(
          designSize: const Size(375, 812),
          minTextAdapt: true,
          splitScreenMode: true,
          child: const DashboardPage(),
          builder: (context, child) {
            return MaterialApp.router(
              debugShowCheckedModeBanner: false,

              // Theme setup
              theme: AppTheme.buildTheme(isDark: false), // Light theme
              darkTheme: AppTheme.buildTheme(isDark: true), // Dark theme
              themeMode: themeTypeToMode(
                themeState.themeEntity?.themeType ?? ThemeType.system,
              ), // System / Light / Dark
              // Localization
              // locale: langState.locale,
              // supportedLocales: AppLocalizations.supportedLocales,
              // localizationsDelegates: AppLocalizations.localizationsDelegates,

              // Initial page
              routerConfig: appRouter,
            );
          },
        );
      },
    );
  }
}
