import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/core/service_locator/main_service_locator.dart';
import 'package:portfolio/features/portfolio/presentation/bloc/page_cubit.dart';
import 'package:portfolio/features/theme/presentation/bloc/theme_bloc.dart';
import 'package:portfolio/features/theme/presentation/bloc/theme_event.dart';

class AppProviders {
  static List<BlocProvider> get providers => [
    BlocProvider(create: (_) => sl<ThemeBloc>()..add(GetThemeEvent())),
    BlocProvider(create: (_) => PageCubit()),
  ];
}
