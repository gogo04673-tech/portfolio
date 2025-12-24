import 'package:portfolio/features/my_works/data/models/work_model.dart';
import 'package:portfolio/features/my_works/domain/entities/work_entity.dart';

class WorksMapper {
  static WorkEntity toEntity(WorkModel work) {
    return WorkEntity(
      id: work.id,
      titleKey: work.titleKey,
      bioKey: work.bioKey,
      background: work.background,
      type: work.type,
    );
  }
}
