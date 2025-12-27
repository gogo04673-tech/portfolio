import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/common/widgets/headline_title.dart';
import 'package:portfolio/core/config/assets/app_icons.dart';
import 'package:portfolio/core/extensions/l10n_extension.dart';
import 'package:portfolio/core/extensions/spacing_extension.dart';
import 'package:portfolio/core/extensions/theme_extension.dart';
import 'package:portfolio/core/responsive/breakpoints.dart';
import 'package:portfolio/features/my_works/domain/entities/work_entity.dart';

class ProjectCard extends StatelessWidget {
  final WorkEntity work;

  const ProjectCard({super.key, required this.work});

  @override
  Widget build(BuildContext context) {
    final isMobile = Breakpoints.isMobile;
    final screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      width: isMobile
          ? screenWidth -
                32 // Full width with margin on mobile
          : 555, // Fixed width on desktop
      child: Card(
        elevation: 0,
        color: context.colorExtension.white08,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(isMobile ? 16 : 24),
        ),
        child: Padding(
          padding: EdgeInsets.all(isMobile ? 12 : 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Responsive image container
              SizedBox(
                height: isMobile ? 160 : 360,
                child: SvgPicture.asset(
                  'assets/images/spendly.svg',
                  fit: BoxFit.fill,
                ),
              ),

              context.spacing.sm.h,

              // Type badge
              HeadlineTitle(
                gradientText: work.type,
                isMedium: true,
                style: context.textTheme.headlineLarge!.copyWith(
                  fontSize: isMobile ? 18 : 28,
                ),
              ),

              context.spacing.sm.h,

              // Title and info button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(
                      context.translate(work.titleKey),
                      style: context.textTheme.headlineLarge!.copyWith(
                        fontSize: isMobile ? 22 : 36,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),

                  SizedBox(width: isMobile ? 8 : 12),

                  CircleAvatar(
                    radius: isMobile ? 20 : 25,
                    child: SvgPicture.asset(
                      AppIcons.info,
                      width: isMobile ? 20 : 24,
                      height: isMobile ? 20 : 24,
                    ),
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
