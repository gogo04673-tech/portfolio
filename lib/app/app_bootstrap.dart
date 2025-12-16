import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/app/app_root.dart';
import 'package:portfolio/core/service_locator/main_service_locator.dart';
import 'package:portfolio/features/localization/presentation/bloc/language_bloc.dart';
import 'package:portfolio/features/localization/presentation/bloc/language_event.dart';
import 'package:portfolio/features/portfolio/presentation/bloc/page_cubit.dart';
import 'package:portfolio/features/theme/presentation/bloc/theme_bloc.dart';
import 'package:portfolio/features/theme/presentation/bloc/theme_event.dart';

class AppBootstrap extends StatelessWidget {
  const AppBootstrap({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => sl<ThemeBloc>()..add(GetThemeEvent())),
        BlocProvider(
          create: (_) => sl<LanguageBloc>()..add(LoadSavedLanguage()),
        ),
        BlocProvider(create: (_) => PageCubit()),
      ],
      child: const AppRoot(),
    );
  }
}
