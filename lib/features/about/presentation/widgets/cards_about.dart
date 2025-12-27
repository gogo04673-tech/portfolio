import 'package:flutter/widgets.dart';
import 'package:portfolio/core/responsive/breakpoints.dart';
import 'package:portfolio/features/about/presentation/utils/about_info_mapper.dart';
import 'package:portfolio/features/about/presentation/widgets/card_about.dart';

class CardsAbout extends StatelessWidget {
  const CardsAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Breakpoints.isMobile ? null : 1140,
      child: Wrap(
        spacing: 12,
        runSpacing: 12,
        alignment: WrapAlignment.center,
        children: AboutInfoMapper.map(context)
            .map(
              (e) => CardAbout(
                title: e.title,
                bio: e.bio,
                icon: e.icon,
                count: e.count,
              ),
            )
            .toList(),
      ),
    );
  }
}
