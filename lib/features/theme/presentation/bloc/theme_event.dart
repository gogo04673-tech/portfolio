import 'package:portfolio/features/theme/domain/enum/theme_type.dart';

abstract class ThemeEvent {}

class GetThemeEvent extends ThemeEvent {}

class ToggleThemeEvent extends ThemeEvent {
  final ThemeType? themeType;
  ToggleThemeEvent({this.themeType});
}
