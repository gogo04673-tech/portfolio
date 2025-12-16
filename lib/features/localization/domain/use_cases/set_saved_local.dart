import 'package:portfolio/core/use_case/use_case.dart';
import 'package:portfolio/features/localization/domain/repositories/localization.dart';

class SetSavedLocalUseCase extends UseCase<dynamic, String> {
  final LocalizationRepository repository;
  SetSavedLocalUseCase(this.repository);

  @override
  Future call({String? params}) async {
    return await repository.setLocale(params!);
  }
}
