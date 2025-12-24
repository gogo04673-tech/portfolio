import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/features/services/domain/use_cases/get_services.dart';
import 'package:portfolio/features/services/presentation/bloc/services_bloc.dart';
import 'package:portfolio/features/services/presentation/bloc/services_state.dart';

class ServicesBloc extends Bloc<ServicesEvent, ServicesState> {
  final GetServicesUseCase getServices;
  ServicesBloc({required this.getServices}) : super(ServicesInitial()) {
    on<LoadServices>(_onGetBudgets);
  }

  Future<void> _onGetBudgets(
    LoadServices event,
    Emitter<ServicesState> emit,
  ) async {
    emit(ServicesLoading());
    final result = await getServices.call();
    result.fold(
      (error) => emit(ServicesError(error.errorMsg)),
      (services) => emit(ServicesLoaded(services)),
    );
  }
}
