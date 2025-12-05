import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {
  final String title1;
  final String title2;
  const HeaderText({super.key, required this.title1, required this.title2});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    List<InlineSpan> spans = [];

    spans.add(
      TextSpan(
        text: title1,
        style: theme.textTheme.headlineLarge!.copyWith(fontSize: 40),
      ),
    );
    spans.add(
      TextSpan(
        text: " $title2",
        style: theme.textTheme.headlineLarge!.copyWith(
          color: theme.colorScheme.primary,
          fontSize: 40,
        ),
      ),
    );

    return RichText(text: TextSpan(children: spans));
  }
}
