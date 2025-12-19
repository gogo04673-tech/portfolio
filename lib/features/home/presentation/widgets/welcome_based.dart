import 'package:flutter/material.dart';
import 'package:portfolio/common/widgets/appear_animation.dart';
import 'package:portfolio/core/extensions/device_extension.dart';

class WelcomeBased extends StatelessWidget {
  const WelcomeBased({super.key});

  @override
  Widget build(BuildContext context) {
    return AppearAnimation(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            context.local.hiImName("Mohammed"),
            style: Theme.of(context).textTheme.headlineMedium,
          ),

          Container(
            width: 2,
            height: 28,
            color: const Color(0xFFFFFFFF).withValues(alpha: .2),
            margin: const EdgeInsets.symmetric(horizontal: 8),
          ),

          Text(
            context.local.basedOnCountry("Morocco"),
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ],
      ),
    );
  }
}
