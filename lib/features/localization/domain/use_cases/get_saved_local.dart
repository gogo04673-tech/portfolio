import 'package:portfolio/core/use_case/use_case.dart';
import 'package:portfolio/features/localization/domain/repositories/localization.dart';

class GetSavedLocalUseCase extends UseCase<dynamic, dynamic> {
  final LocalizationRepository repository;
  GetSavedLocalUseCase(this.repository);

  @override
  Future call({params}) async {
    return await repository.getSavedLocale();
  }
}
