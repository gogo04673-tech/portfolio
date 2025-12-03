import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/core/config/theme/app_theme.dart';
import 'package:portfolio/features/app/presentation/pages/app.dart';

void main() {
  runApp(const MyApp());
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
