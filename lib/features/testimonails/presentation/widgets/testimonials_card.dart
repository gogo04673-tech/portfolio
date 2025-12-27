import 'package:flutter_svg/svg.dart';
import 'package:portfolio/common/widgets/bio_text.dart';
import 'package:portfolio/core/config/assets/app_icons.dart';
import 'package:portfolio/core/extensions/spacing_extension.dart';
import 'package:portfolio/core/extensions/theme_extension.dart';
import 'package:portfolio/features/testimonails/domain/entities/testimonial_entity.dart';
import 'package:flutter/material.dart';

class TestimonialCards extends StatelessWidget {
  final TestimonialEntity testimonial;
  const TestimonialCards(this.testimonial, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,

      height: 260,

      child: Card(
        elevation: 0,
        color: context.colorExtension.white08,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              context.spacing.md.h,
              BioText(
                isStart: true,
                key: Key("${testimonial.id}"),
                bio: testimonial.bio,
              ),

              const Spacer(),

              Row(
                children: [
                  const CircleAvatar(radius: 30),
                  context.spacing.md.w,

                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: testimonial.name,
                          style: Theme.of(
                            context,
                          ).textTheme.titleMedium!.copyWith(fontSize: 18),
                        ),
                        TextSpan(
                          text: '\n${testimonial.job}',
                          style: Theme.of(context).textTheme.bodySmall!,
                        ),
                      ],
                    ),
                  ),

                  const Spacer(),

                  SvgPicture.asset(AppIcons.quote),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
