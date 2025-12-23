import 'package:equatable/equatable.dart';

abstract class GenericDataEvent extends Equatable {
  const GenericDataEvent();

  @override
  List<Object?> get props => [];
}

class LoadDataEvent<P> extends GenericDataEvent {
  final P params;

  const LoadDataEvent({required this.params});
}
