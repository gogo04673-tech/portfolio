import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/core/config/theme/app_theme.dart';
import 'package:portfolio/features/app/presentation/pages/app.dart';
import 'package:portfolio/features/portfolio_view/presentation/bloc/page_cubit.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [BlocProvider(create: (_) => PageCubit())],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.getTheme(true),
      home: const AppLayout(),
    );
  }
}
