import 'package:flutter/material.dart';

class BasicOutlinedButton extends StatelessWidget {
  final String title;
  final void Function() onPressed;
  const BasicOutlinedButton({
    super.key,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: theme.colorScheme.primary),
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      ),
      child: Text(title, style: theme.textTheme.titleMedium),
    );
  }
}
