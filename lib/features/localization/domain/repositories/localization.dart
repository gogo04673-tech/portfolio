abstract class LocalizationRepository {
  Future<String?> getSavedLocale();
  Future<void> setLocale(String code);
}
