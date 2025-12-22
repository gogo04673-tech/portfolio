import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BasicIconSvg extends StatelessWidget {
  final String icon;
  final bool isCircle;
  final VoidCallback onPressed;
  const BasicIconSvg({
    super.key,
    required this.onPressed,
    required this.icon,
    this.isCircle = false,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: SvgPicture.asset(icon),
      style: ButtonStyle(
        shape: isCircle
            ? WidgetStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              )
            : null,

        // 👇 Hover background
        backgroundColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.hovered)) {
            return const Color(0xFFFFFFFF).withValues(alpha: .012);
          }
          return const Color(0xFFFFFFFF).withValues(alpha: .08);
        }),

        // // 👇 Icon color on hover
        // foregroundColor: WidgetStateProperty.resolveWith((states) {
        //   if (states.contains(WidgetState.hovered)) {
        //     return context.colors.secondary;
        //   }
        //   return Colors.white70;
        // }),
        padding: WidgetStateProperty.all(const EdgeInsets.all(10)),
      ),
    );
  }
}
