import 'package:flutter/material.dart';
import 'package:portfolio/common/widgets/appear_animation.dart';

class HeadlineTitle extends StatelessWidget {
  final String gradientText;
  final String? text;
  final bool isMedium;
  final TextStyle? style;
  const HeadlineTitle({
    super.key,
    required this.gradientText,
    this.text,
    this.isMedium = false,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    final textStyle = isMedium
        ? style ?? Theme.of(context).textTheme.titleMedium
        : Theme.of(context).textTheme.headlineLarge;

    return AppearAnimation(
      child: RichText(
        textAlign: isMedium ? TextAlign.start : TextAlign.center,
        text: TextSpan(
          style: textStyle,
          children: [
            WidgetSpan(
              alignment: PlaceholderAlignment.baseline,
              baseline: TextBaseline.alphabetic,
              child: ShaderMask(
                shaderCallback: (bounds) => LinearGradient(
                  colors: [
                    Theme.of(context).colorScheme.secondary,
                    Theme.of(context).colorScheme.primary,
                  ],
                ).createShader(bounds),
                child: Text(gradientText, style: textStyle),
              ),
            ),
            TextSpan(text: text ?? '', style: textStyle),
          ],
        ),
      ),
    );
  }
}
