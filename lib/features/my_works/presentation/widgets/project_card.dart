import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/common/widgets/headline_title.dart';
import 'package:portfolio/core/config/assets/app_icons.dart';
import 'package:portfolio/core/extensions/l10n_extension.dart';
import 'package:portfolio/core/extensions/spacing_extension.dart';
import 'package:portfolio/core/extensions/theme_extension.dart';
import 'package:portfolio/features/my_works/domain/entities/work_entity.dart';

class ProjectCard extends StatelessWidget {
  final WorkEntity work;

  const ProjectCard({super.key, required this.work});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 555,
      height: 516,
      child: Card(
        elevation: 0,
        color: context.colorExtension.white08,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset('assets/images/spendly.svg'),
              context.spacing.sm.h,
              HeadlineTitle(
                gradientText: work.type,
                isMedium: true,
                style: context.textTheme.headlineLarge!.copyWith(fontSize: 28),
              ),

              context.spacing.sm.h,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    context.translate(work.titleKey),
                    style: context.textTheme.headlineLarge!.copyWith(
                      fontSize: 36,
                    ),
                  ),

                  CircleAvatar(
                    radius: 25,
                    child: SvgPicture.asset(AppIcons.info),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
