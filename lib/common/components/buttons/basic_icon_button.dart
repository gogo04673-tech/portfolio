import 'package:flutter/material.dart';

class BasicIconButton extends StatelessWidget {
  final String img;
  final VoidCallback onPressed;
  const BasicIconButton({
    super.key,
    required this.img,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(20),
        side: BorderSide(color: colorScheme.primary, width: 2),
      ),
      child: Image.asset(
        img,
        width: 20,
        height: 20,
        fit: BoxFit.contain,
        color: colorScheme.primary,
      ),
    );
  }
}
