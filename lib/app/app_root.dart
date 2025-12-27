import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/core/config/routes/app_router.dart';
import 'package:portfolio/core/config/theme/app_theme.dart';
import 'package:portfolio/features/localization/presentation/bloc/language_bloc.dart';
import 'package:portfolio/features/localization/presentation/bloc/language_state.dart';
import 'package:portfolio/features/theme/domain/enum/theme_type.dart';
import 'package:portfolio/features/theme/domain/utils/theme_utils.dart';
import 'package:portfolio/features/theme/presentation/bloc/theme_bloc.dart';
import 'package:portfolio/features/theme/presentation/bloc/theme_state.dart';
import 'package:portfolio/l10n/app_localizations.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, themeState) {
        return ScreenUtilInit(
          designSize: const Size(1728, 5000),
          minTextAdapt: true,
          builder: (_, __) {
            return BlocBuilder<LanguageBloc, LanguageState>(
              builder: (context, langState) {
                return MaterialApp.router(
                  debugShowCheckedModeBanner: false,
                  theme: AppTheme.buildTheme(isDark: false),
                  darkTheme: AppTheme.buildTheme(isDark: true),
                  themeMode: ThemeUtils.themeTypeToMode(
                    themeState.themeEntity?.themeType ?? ThemeType.system,
                  ),
                  locale: langState.locale,
                  supportedLocales: AppLocalizations.supportedLocales,
                  localizationsDelegates:
                      AppLocalizations.localizationsDelegates,
                  routerConfig: AppRouter.router,
                );
              },
            );
          },
        );
      },
    );
  }
}
