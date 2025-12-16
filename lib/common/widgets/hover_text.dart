import 'package:flutter/material.dart';

class HoverText extends StatefulWidget {
  final String title;
  final bool isActive;
  final VoidCallback onTap;

  const HoverText({
    super.key,
    required this.title,
    required this.isActive,
    required this.onTap,
  });

  @override
  State<HoverText> createState() => _HoverTextState();
}

class _HoverTextState extends State<HoverText> {
  final ValueNotifier<bool> _isHover = ValueNotifier(false);

  @override
  void dispose() {
    _isHover.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _isHover.value = true,
      onExit: (_) => _isHover.value = false,
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: widget.onTap,
        child: ValueListenableBuilder<bool>(
          valueListenable: _isHover,
          builder: (context, isHovering, _) {
            final Color color = widget.isActive || isHovering
                ? Theme.of(context).colorScheme.secondary
                : Colors.white;

            return Text(
              widget.title,

              style: Theme.of(
                context,
              ).textTheme.headlineSmall!.copyWith(color: color),
            );
          },
        ),
      ),
    );
  }
}
