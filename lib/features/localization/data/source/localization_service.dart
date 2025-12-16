import 'package:portfolio/core/service_locator/storage_service.dart';
import 'package:portfolio/core/storage/storage_keys.dart';

abstract class LocalizationService {
  Future<String?> getSavedLocal();
  Future<void> savedLocal(String value);
}

class LocalizationServiceImpl implements LocalizationService {
  final StorageService storage;
  LocalizationServiceImpl(this.storage);

  @override
  Future<String?> getSavedLocal() async {
    return storage.getString(StorageKeys.language);
  }

  @override
  Future<void> savedLocal(String value) async {
    storage.saveString(StorageKeys.language, value);
  }
}
