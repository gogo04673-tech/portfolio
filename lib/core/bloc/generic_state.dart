import 'package:equatable/equatable.dart';

abstract class GenericDataState extends Equatable {
  const GenericDataState();

  @override
  List<Object?> get props => [];
}

class DataInitial extends GenericDataState {}

class DataLoading extends GenericDataState {}

class DataLoaded<T> extends GenericDataState {
  final T data;

  const DataLoaded(this.data);

  @override
  List<Object?> get props => [data];
}

class DataError extends GenericDataState {
  final String message;

  const DataError(this.message);

  @override
  List<Object?> get props => [message];
}
