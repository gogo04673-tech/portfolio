import 'package:dartz/dartz.dart';
import 'package:portfolio/core/errors/app_error.dart';
import 'package:portfolio/features/services/domain/entities/service_entity.dart';

abstract class ServicesRepository {
  Future<Either<AppError, List<ServiceEntity>>> getServices();
}
