import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/common/widgets/bio_text.dart';
import 'package:portfolio/core/extensions/theme_extension.dart';
import 'package:portfolio/features/services/models/service_model.dart';

class CardService extends StatelessWidget {
  final ServiceModel service;
  const CardService(this.service, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 284,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF).withValues(alpha: .08),
        borderRadius: BorderRadius.circular(24),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset(service.icon, width: 52, height: 60),

          Text(service.title, style: context.textTheme.headlineMedium),

          BioText(isStart: true, bio: service.bio),
        ],
      ),
    );
  }
}
