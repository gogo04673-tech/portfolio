import 'package:flutter/material.dart';
import 'package:portfolio/core/responsive/breakpoints.dart';
import 'package:portfolio/features/services/presentation/utils/services_mapper.dart';
import 'package:portfolio/features/services/presentation/widgets/card_service.dart';

class WrapSpecialties extends StatelessWidget {
  const WrapSpecialties({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Breakpoints.isMobile ? null : 1140,

      child: Wrap(
        spacing: 24,
        runSpacing: 24,
        children: ServicesMapper.map(
          context,
        ).map((s) => CardService(s)).toList(),
      ),
    );
  }
}
