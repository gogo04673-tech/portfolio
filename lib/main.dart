import 'package:flutter/material.dart';
import 'package:portfolio/app/app_bootstrap.dart';
import 'package:portfolio/core/service_locator/main_service_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MainServiceLocator.init();
  runApp(const AppBootstrap());
}
