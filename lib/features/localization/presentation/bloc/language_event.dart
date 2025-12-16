abstract class LanguageEvent {}

class LoadSavedLanguage extends LanguageEvent {}

class ChangeLanguage extends LanguageEvent {
  final String? langCode;

  ChangeLanguage(this.langCode);
}
