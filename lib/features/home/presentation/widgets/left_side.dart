import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/profile_info.dart';
import 'package:portfolio/core/constants/social_media_icons.dart';
import 'package:portfolio/common/components/buttons/basic_button.dart';
import 'package:portfolio/common/components/buttons/basic_icon_button.dart';

import 'package:portfolio/common/components/texts/typing_text.dart';

class LeftSide extends StatelessWidget {
  const LeftSide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Welcome + Name
        const _Iam(),

        // Typing animation
        const Row(
          children: [
            Text(
              "And I'm a ",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            TypingText(title: ProfileInfo.special),
          ],
        ),

        const SizedBox(height: 20),

        // Short bio
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.3,
          child: const Text(
            ProfileInfo.bioEn,
            style: TextStyle(fontSize: 16, color: Colors.white70),
          ),
        ),

        const SizedBox(height: 10),

        // Social Media Icons
        const _ListSocialMediaIcons(),

        const SizedBox(height: 30),

        // Buttons
        BasicButton(title: ProfileInfo.moreAboutMe, onPressed: () {}),
      ],
    );
  }
}

class _Iam extends StatelessWidget {
  const _Iam();

  @override
  Widget build(BuildContext context) {
    List<InlineSpan> spans = [];

    spans.add(
      const TextSpan(
        text: ProfileInfo.welcome,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 35,
        ),
      ),
    );

    spans.add(
      const TextSpan(
        text: "\n${ProfileInfo.name}",
        style: TextStyle(
          fontSize: 50,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );

    return RichText(text: TextSpan(children: spans));
  }
}

class _ListSocialMediaIcons extends StatelessWidget {
  const _ListSocialMediaIcons();

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: SocialMediaIcons.list.map((media) {
        return Padding(
          padding: const EdgeInsets.only(right: 15),
          child: BasicIconButton(img: media.icon, onPressed: media.onTap),
        );
      }).toList(),
    );
  }
}
