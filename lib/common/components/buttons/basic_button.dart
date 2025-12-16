import 'package:flutter/material.dart';

class BasicButton extends StatefulWidget {
  final String title;
  final void Function() onPressed;

  const BasicButton({super.key, required this.title, required this.onPressed});

  @override
  State<BasicButton> createState() => _BasicButtonState();
}

class _BasicButtonState extends State<BasicButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      cursor: SystemMouseCursors.click,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          boxShadow: isHovered
              ? [
                  BoxShadow(
                    color: theme.colorScheme.primary.withValues(alpha: 0.8),
                    blurRadius: 35,
                    spreadRadius: 3,
                  ),
                ]
              : [],
        ),
        child: ElevatedButton(
          onPressed: widget.onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: theme.colorScheme.primary,
            elevation: 0,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          ),
          child: Text(
            widget.title,
            style: theme.textTheme.titleMedium!.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
