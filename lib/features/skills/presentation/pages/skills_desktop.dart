import 'package:flutter/material.dart';
import 'package:portfolio/common/components/texts/header_text.dart';
import 'package:portfolio/common/components/texts/text_underline.dart';
import 'package:portfolio/features/skills/presentation/widgets/professional_skills.dart';
import 'package:portfolio/features/skills/presentation/widgets/technical_skills.dart';

class SkillsDesktopPage extends StatelessWidget {
  const SkillsDesktopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.only(top: 80),
      child: const Column(
        children: [
          HeaderText(title1: "My", title2: "Skills"),

          SizedBox(height: 80),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextUnderline(title: "Technical Skills"),
              SizedBox(width: 30),
              TextUnderline(title: "Professional Skills"),
            ],
          ),

          SizedBox(height: 60),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TechnicalSkills(),
              SizedBox(width: 30),
              ProfessionalSkills(),
            ],
          ),
        ],
      ),
    );
  }
}
