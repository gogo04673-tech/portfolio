import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class TypingText extends StatelessWidget {
  final String title;
  const TypingText({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          AnimatedTextKit(
            repeatForever: true,

            animatedTexts: [
              TypewriterAnimatedText(
                'Frontend Developer',
                textStyle: TextStyle(
                  fontSize: 32,
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold,
                ),
                cursor: '|',
                curve: Curves.ease,
                speed: const Duration(milliseconds: 200), // سرعة الكتابة
              ),
            ],
          ),
        ],
      ),
    );
  }
}
