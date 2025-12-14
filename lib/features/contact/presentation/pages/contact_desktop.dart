import 'package:flutter/material.dart';
import 'package:portfolio/common/components/texts/header_text.dart';

class ContactDesktopPage extends StatelessWidget {
  const ContactDesktopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: const Row(children: [_LeftSideContact()]),
    );
  }
}

class _LeftSideContact extends StatelessWidget {
  const _LeftSideContact();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .5,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [HeaderText(title1: "Contact", title2: "Me")],
      ),
    );
  }
}
