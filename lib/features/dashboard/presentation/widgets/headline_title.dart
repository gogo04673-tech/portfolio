import 'package:flutter/material.dart';

class HeadlineTitle extends StatelessWidget {
  final String gradientText;
  final String text;
  const HeadlineTitle({
    super.key,
    required this.gradientText,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final headlineLarge = Theme.of(context).textTheme.headlineLarge;

    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: headlineLarge,
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
              child: Text("$gradientText ", style: headlineLarge),
            ),
          ),
          TextSpan(text: text, style: headlineLarge),
        ],
      ),
    );
  }
}
