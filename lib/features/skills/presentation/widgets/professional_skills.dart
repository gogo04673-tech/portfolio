import 'package:flutter/material.dart';
import 'package:portfolio/common/components/toggle_circle_progress.dart';

class ProfessionalSkills extends StatelessWidget {
  const ProfessionalSkills({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.3,
      child: const Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ToggleCircleProgress(skill: 'Creativity', value: 90),

              ToggleCircleProgress(skill: 'Communication', value: 65),
            ],
          ),

          SizedBox(height: 50),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [
              ToggleCircleProgress(skill: 'Problem Solving', value: 80),

              ToggleCircleProgress(skill: 'Teamwork', value: 60),
            ],
          ),
        ],
      ),
    );
  }
}
