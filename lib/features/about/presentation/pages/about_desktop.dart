import 'package:flutter/material.dart';
import 'package:portfolio/common/components/texts/header_text.dart';
import 'package:portfolio/core/constants/profile_info.dart';
import 'package:portfolio/common/components/buttons/basic_button.dart';

class AboutDesktopPage extends StatefulWidget {
  const AboutDesktopPage({super.key});

  @override
  State<AboutDesktopPage> createState() => _AboutDesktopPageState();
}

class _AboutDesktopPageState extends State<AboutDesktopPage> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,

      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const HeaderText(title1: 'About', title2: 'Me'),
            const SizedBox(height: 80),
            const _Avatar(),
            Text(
              ProfileInfo.special,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const _Description(),

            BasicButton(title: "Read More", onPressed: () {}),
          ],
        ),
      ),
    );
  }
}

class _Avatar extends StatelessWidget {
  const _Avatar();

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(radius: 100);
  }
}

class _Description extends StatelessWidget {
  const _Description();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: const Text(
        ProfileInfo.descriptionEn,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 16, color: Colors.white70),
      ),
    );
  }
}
