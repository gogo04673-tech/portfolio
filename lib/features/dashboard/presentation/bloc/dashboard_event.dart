import 'package:equatable/equatable.dart';

abstract class DashboardEvent extends Equatable {}

class LoadDashboard extends DashboardEvent {
  @override
  List<Object?> get props => throw UnimplementedError();
}
