import 'package:flutter/material.dart';

class ToggleLineProgress extends StatelessWidget {
  final String language;
  final double value;
  final String? logo;
  const ToggleLineProgress({
    super.key,
    required this.language,
    required this.value,
    this.logo,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        language.toLowerCase() == 'flutter'
            ? const FlutterLogo(size: 25)
            : Image.asset(logo!, width: 20),
        const SizedBox(height: 10),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text(language), Text("$value%")],
        ),

        const SizedBox(height: 10),

        LinearProgressIndicator(
          value: value / 100,
          minHeight: 4,
          backgroundColor: Colors.black,

          borderRadius: BorderRadius.circular(8),
        ),
      ],
    );
  }
}
