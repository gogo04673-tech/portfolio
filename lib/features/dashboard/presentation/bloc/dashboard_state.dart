import 'package:equatable/equatable.dart';

abstract class DashboardState extends Equatable {}

class DashboardInitial extends DashboardState {
  @override
  List<Object?> get props => [];
}

class DashboardLoading extends DashboardState {
  @override
  List<Object?> get props => [];
}

class DashBoardError extends DashboardState {
  final String error;

  DashBoardError({required this.error});

  @override
  List<Object?> get props => [error];
}

class DashboardLoaded extends DashboardState {
  final String data;

  DashboardLoaded({required this.data});
  @override
  List<Object?> get props => [data];
}
