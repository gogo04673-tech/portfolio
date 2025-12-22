import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/common/widgets/bio_text.dart';
import 'package:portfolio/core/extensions/spacing_extension.dart';
import 'package:portfolio/core/extensions/theme_extension.dart';

class CardAbout extends StatelessWidget {
  final String title;
  final String bio;
  final String icon;
  final String count;
  const CardAbout({
    super.key,
    required this.title,
    required this.bio,
    required this.icon,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 364,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF).withValues(alpha: .08),
        borderRadius: BorderRadius.circular(context.spacing.md),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              CircleAvatar(
                radius: 28,
                backgroundColor: const Color(0xFFFFFFFF).withValues(alpha: .04),
                child: SvgPicture.asset(icon),
              ),

              Text(
                count,
                style: context.textTheme.headlineLarge!.copyWith(fontSize: 46),
              ),
            ],
          ),

          context.spacing.xl.h,

          Text(title, style: context.textTheme.bodyLarge),
          BioText(bio: bio, isStart: true),
        ],
      ),
    );
  }
}
