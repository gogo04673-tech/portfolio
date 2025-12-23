import 'package:portfolio/features/services/domain/entities/service_entity.dart';

abstract class ServicesState {}

class ServicesInitial extends ServicesState {}

class ServicesLoading extends ServicesState {}

class ServicesLoaded extends ServicesState {
  final List<ServiceEntity> services;
  ServicesLoaded(this.services);
}

// class BudgetAdded extends ServicesState {
//   final int budgetId;
//   BudgetAdded(this.budgetId);
// }

// class BudgetDeleted extends ServicesState {
//   final int budgetId;
//   BudgetDeleted(this.budgetId);
// }

class ServicesError extends ServicesState {
  final String message;
  ServicesError(this.message);
}
