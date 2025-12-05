import 'package:flutter/material.dart';

class ToggleCircleProgress extends StatelessWidget {
  final String skill;
  final double value;
  final String? logo;
  const ToggleCircleProgress({
    super.key,
    required this.skill,
    required this.value,
    this.logo,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: 100,
              height: 100,
              child: CircularProgressIndicator(
                value: value / 100, // example: 90/100
                backgroundColor: Colors.black,
                strokeWidth: 8,
              ),
            ),

            // Text in the center
            Text(
              "${value.toInt()}%",
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),

        const SizedBox(height: 20),

        Text(skill),
      ],
    );
  }
}
