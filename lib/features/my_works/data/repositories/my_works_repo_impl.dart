import 'package:dartz/dartz.dart';
import 'package:portfolio/core/errors/app_error.dart';
import 'package:portfolio/features/my_works/data/mappers/works_mapper.dart';
import 'package:portfolio/features/my_works/data/models/work_model.dart';
import 'package:portfolio/features/my_works/data/source/my_works_services.dart';
import 'package:portfolio/features/my_works/domain/entities/work_entity.dart';
import 'package:portfolio/features/my_works/domain/repositories/my_works_repo.dart';

class MyWorksRepositoryImpl implements MyWorksRepository {
  final MyWorksServices services;

  MyWorksRepositoryImpl(this.services);

  @override
  Future<Either<AppError, List<WorkEntity>>> getWorks() async {
    final result = await services.getWorks();

    return result.fold((error) => Left(error), (data) {
      final List<WorkEntity> services = data
          .map((s) => WorksMapper.toEntity(WorkModel.fromJson(s)))
          .toList();

      return Right(services);
    });
  }
}
