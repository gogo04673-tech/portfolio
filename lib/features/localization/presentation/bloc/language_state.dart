import 'dart:ui';

class LanguageState {
  final Locale locale;

  LanguageState({required this.locale});

  factory LanguageState.initial() {
    return LanguageState(locale: const Locale('en'));
  }
}
