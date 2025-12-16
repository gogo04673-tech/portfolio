import 'package:portfolio/features/localization/data/source/localization_service.dart';
import 'package:portfolio/features/localization/domain/repositories/localization.dart';

class LocalizationRepositoryImpl implements LocalizationRepository {
  final LocalizationService service;
  LocalizationRepositoryImpl(this.service);

  @override
  Future<String?> getSavedLocale() async {
    var result = await service.getSavedLocal();
    return result;
  }

  @override
  Future<void> setLocale(String code) async {
    return await service.savedLocal(code);
  }
}
