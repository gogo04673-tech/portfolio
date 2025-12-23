import 'package:portfolio/features/services/data/models/service_model.dart';
import 'package:portfolio/features/services/domain/entities/service_entity.dart';

class ServicesMapper {
  static ServiceEntity toEntity(ServiceModel service) {
    return ServiceEntity(
      id: service.id,
      titleKey: service.titleKey,
      bioKey: service.bioKey,
      icon: service.icon,
    );
  }
}
