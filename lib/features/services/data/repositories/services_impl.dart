import 'package:dartz/dartz.dart';
import 'package:portfolio/core/errors/app_error.dart';
import 'package:portfolio/features/services/data/mappers/services_mapper.dart';
import 'package:portfolio/features/services/data/models/service_model.dart';
import 'package:portfolio/features/services/data/sources/services.dart';
import 'package:portfolio/features/services/domain/entities/service_entity.dart';
import 'package:portfolio/features/services/domain/repositories/services_repo.dart';

class ServicesRepositoryImp extends ServicesRepository {
  final ServicesService services;

  ServicesRepositoryImp(this.services);

  @override
  Future<Either<AppError, List<ServiceEntity>>> getServices() async {
    final result = await services.getServices();

    return result.fold((error) => Left(error), (data) {
      final List<ServiceEntity> services = data
          .map((s) => ServicesMapper.toEntity(ServiceModel.fromJson(s)))
          .toList();

      return Right(services);
    });
  }
}
