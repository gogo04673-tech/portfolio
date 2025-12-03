import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/core/config/assets/app_lottie.dart';
import 'package:portfolio/features/home/presentation/widgets/left_text.dart';

class HomeDesktopPage extends StatefulWidget {
  const HomeDesktopPage({super.key});

  @override
  State<HomeDesktopPage> createState() => _HomeDesktopPageState();
}

class _HomeDesktopPageState extends State<HomeDesktopPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: _AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 100),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(padding: EdgeInsets.only(bottom: 150), child: LeftText()),
          ],
        ),
      ),
    );
  }
}

class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  const _AppBar();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 30),
        child: Row(
          children: [
            Lottie.asset(
              AppLottie.globe,
              width: 50,
              height: 50,
              fit: BoxFit.contain,
            ),
            Text(
              "Mohammed.",
              style: Theme.of(
                context,
              ).textTheme.headlineLarge!.copyWith(fontSize: 22),
            ),
            const Spacer(),
            const _HoverText(title: 'Home', isActive: true),
            const _HoverText(title: 'About', isActive: false),
            const _HoverText(title: 'Portfolio', isActive: false),
            const _HoverText(title: 'Service', isActive: false),
            const _HoverText(title: 'Contact', isActive: false),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(120);
}

class _HoverText extends StatefulWidget {
  final String title;
  final bool isActive;
  const _HoverText({required this.title, required this.isActive});

  @override
  State<_HoverText> createState() => _HoverTextState();
}

class _HoverTextState extends State<_HoverText> {
  bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    // ColorScheme appColor = Theme.of(context).colorScheme;
    Color color;
    if (widget.isActive) {
      color = Theme.of(context).colorScheme.primary;
    } else if (_isHover) {
      color = Theme.of(context).colorScheme.primary;
    } else {
      color = Colors.white;
    }

    return MouseRegion(
      onEnter: (_) => setState(() => _isHover = true),
      onExit: (_) => setState(() => _isHover = false),
      cursor: SystemMouseCursors.click,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: GestureDetector(
          onTap: () {},

          child: Text(
            widget.title,
            style: Theme.of(
              context,
            ).textTheme.headlineLarge!.copyWith(fontSize: 20, color: color),
          ),
        ),
      ),
    );
  }
}
