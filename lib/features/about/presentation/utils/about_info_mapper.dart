import 'package:flutter/widgets.dart';
import 'package:portfolio/core/config/assets/app_icons.dart';
import 'package:portfolio/core/extensions/device_extension.dart';
import 'package:portfolio/features/about/data/models/about_info_model.dart';

class AboutInfoMapper {
  static List<AboutInfoModel> map(BuildContext context) {
    return [
      AboutInfoModel(
        title: context.local.totalProjects,
        bio: context.local.totalProjectsBio,
        icon: AppIcons.code,
        count: '4',
      ),
      AboutInfoModel(
        title: context.local.certificates,
        bio: context.local.certificatesBio,
        icon: AppIcons.certificates,
        count: '0',
      ),
      AboutInfoModel(
        title: context.local.yearsOfExperience,
        bio: context.local.yearsBio,
        icon: AppIcons.world,
        count: '2',
      ),
    ];
  }
}
