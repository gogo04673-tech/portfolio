import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/features/dashboard/presentation/bloc/dashboard_event.dart';
import 'package:portfolio/features/dashboard/presentation/bloc/dashboard_state.dart';

abstract class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardBloc() : super(DashboardInitial()) {
    on<LoadDashboard>(_onLoad);
  }
  _onLoad(LoadDashboard event, Emitter emit) {
    emit(DashboardLoading());
  }
}
