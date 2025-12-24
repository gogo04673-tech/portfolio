import 'package:dartz/dartz.dart';
import 'package:portfolio/core/errors/app_error.dart';
import 'package:portfolio/core/use_case/use_case.dart';
import 'package:portfolio/features/my_works/domain/entities/work_entity.dart';
import 'package:portfolio/features/my_works/domain/repositories/my_works_repo.dart';

class GetWorksUseCase
    extends UseCase<Either<AppError, List<WorkEntity>>, dynamic> {
  final MyWorksRepository repo;

  GetWorksUseCase(this.repo);

  @override
  Future<Either<AppError, List<WorkEntity>>> call({params}) async {
    return await repo.getWorks();
  }
}
