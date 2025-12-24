import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/features/my_works/domain/enum/my_works_enum.dart';

class MyWorksCubit extends Cubit<MyWorksEnum> {
  MyWorksCubit() : super(MyWorksEnum.all);

  void setFilter(MyWorksEnum key) => emit(key);
}
