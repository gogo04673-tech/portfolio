import 'package:portfolio/core/errors/app_error.dart';
import 'package:portfolio/features/my_works/domain/entities/work_entity.dart';

abstract class MyWorksState {}

class WorksInitial extends MyWorksState {}

class WorksLoading extends MyWorksState {}

class WorksLoaded extends MyWorksState {
  final List<WorkEntity> works;
  WorksLoaded(this.works);
}

// class BudgetAdded extends MyWorksState {
//   final int budgetId;
//   BudgetAdded(this.budgetId);
// }

// class BudgetDeleted extends MyWorksState {
//   final int budgetId;
//   BudgetDeleted(this.budgetId);
// }

class WorksError extends MyWorksState {
  final AppError message;
  WorksError(this.message);
}
