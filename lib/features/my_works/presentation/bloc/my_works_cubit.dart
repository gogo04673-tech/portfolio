import 'package:flutter_bloc/flutter_bloc.dart';

class MyWorksCubit extends Cubit<int> {
  MyWorksCubit() : super(0);

  void setMyWork(int index) => emit(index);
}
