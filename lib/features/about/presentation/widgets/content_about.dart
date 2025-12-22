import 'package:flutter/widgets.dart';
import 'package:portfolio/common/widgets/basic_icon_svg.dart';
import 'package:portfolio/common/widgets/bio_text.dart';
import 'package:portfolio/common/widgets/headline_title.dart';
import 'package:portfolio/core/config/assets/app_icons.dart';
import 'package:portfolio/core/extensions/device_extension.dart';
import 'package:portfolio/core/extensions/spacing_extension.dart';
import 'package:portfolio/core/extensions/theme_extension.dart';

class ContentAbout extends StatelessWidget {
  const ContentAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeadlineTitle(
          gradientText: context.local.helloIm,
          text: "\nEljihad Mohammed",
          isMedium: true,
        ),

        context.spacing.lg.h,

        BioText(isStart: true, bio: context.local.aboutBio),

        context.spacing.lg.h,

        SizedBox(
          width: 200,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BasicIconSvg(onPressed: () {}, icon: AppIcons.linkedin),
              BasicIconSvg(onPressed: () {}, icon: AppIcons.instagram),
              BasicIconSvg(onPressed: () {}, icon: AppIcons.github),
              BasicIconSvg(onPressed: () {}, icon: AppIcons.email),
            ],
          ),
        ),
      ],
    );
  }
}
