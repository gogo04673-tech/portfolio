import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/features/my_works/domain/use_cases/get_works.dart';
import 'package:portfolio/features/my_works/presentation/bloc/my_works_event.dart';
import 'package:portfolio/features/my_works/presentation/bloc/my_works_state.dart';

class MyWorksBloc extends Bloc<MyWorksEvent, MyWorksState> {
  final GetWorksUseCase getWorks;
  MyWorksBloc({required this.getWorks}) : super(WorksInitial()) {
    on<LoadWorks>(_onGetWorks);
  }

  Future<void> _onGetWorks(LoadWorks event, Emitter<MyWorksState> emit) async {
    emit(WorksLoading());
    final result = await getWorks.call();
    result.fold(
      (error) => emit(WorksError(error)),
      (works) => emit(WorksLoaded(works)),
    );
  }
}
