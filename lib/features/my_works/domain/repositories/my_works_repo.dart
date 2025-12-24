import 'package:dartz/dartz.dart';
import 'package:portfolio/core/errors/app_error.dart';
import 'package:portfolio/features/my_works/domain/entities/work_entity.dart';

abstract class MyWorksRepository {
  Future<Either<AppError, List<WorkEntity>>> getWorks();
}
