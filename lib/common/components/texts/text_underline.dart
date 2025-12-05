import 'package:flutter/material.dart';

class TextUnderline extends StatelessWidget {
  final String title;
  const TextUnderline({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(bottom: 6),
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.white, width: 5),
              top: BorderSide.none,
              left: BorderSide.none,
              right: BorderSide.none,
            ),
          ),
          child: Text(title, style: theme.textTheme.headlineLarge),
        ),
      ],
    );
  }
}
