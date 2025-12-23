import 'package:dartz/dartz.dart';
import 'package:portfolio/core/errors/app_error.dart';
import 'package:portfolio/core/use_case/use_case.dart';
import 'package:portfolio/features/services/domain/entities/service_entity.dart';
import 'package:portfolio/features/services/domain/repositories/services_repo.dart';

class GetServicesUseCase
    extends UseCase<Either<AppError, List<ServiceEntity>>, dynamic> {
  final ServicesRepository repository;

  GetServicesUseCase(this.repository);

  @override
  Future<Either<AppError, List<ServiceEntity>>> call({params}) async {
    return await repository.getServices();
  }
}
