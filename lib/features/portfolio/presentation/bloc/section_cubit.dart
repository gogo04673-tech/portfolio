import 'package:flutter_bloc/flutter_bloc.dart';

class SectionCubit extends Cubit<int> {
  SectionCubit() : super(0);

  void setSection(int index) => emit(index);
}
