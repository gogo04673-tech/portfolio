import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/profile_info.dart';
import 'package:portfolio/core/widgets/texts/typing_text.dart';

class LeftText extends StatelessWidget {
  const LeftText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          ProfileInfo.welcomeAndName,
          style: TextStyle(
            fontSize: 54,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),

        const TypingText(title: ProfileInfo.special),

        const SizedBox(height: 20),

        const SizedBox(
          width: 750,
          child: Text(
            ProfileInfo.bioEn,
            style: TextStyle(fontSize: 16, color: Colors.white70),
          ),
        ),
        const SizedBox(height: 30),

        Row(
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 15,
                ),
              ),
              child: const Text("Hire Me"),
            ),
            const SizedBox(width: 20),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.blueAccent),
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 15,
                ),
              ),
              child: const Text("Let’s Talk"),
            ),
          ],
        ),
      ],
    );
  }
}
