import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../errors/app_error.dart';
import 'generic_state.dart';
import 'generic_event.dart';

class GenericDataBloc<P, T> extends Bloc<GenericDataEvent, GenericDataState> {
  final Future<Either<AppError, T>> Function(P params) useCase;

  GenericDataBloc(this.useCase) : super(DataInitial()) {
    on<LoadDataEvent<P>>((event, emit) async {
      emit(DataLoading());
      try {
        final res = await useCase(event.params);
        res.fold(
          (failure) => emit(DataError(failure.errorMsg)),
          (data) => emit(DataLoaded(data)),
        );
      } catch (e) {
        emit(DataError(e.toString()));
      }
    });
  }
}
