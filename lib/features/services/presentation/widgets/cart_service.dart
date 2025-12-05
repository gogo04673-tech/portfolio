import 'package:flutter/material.dart';
import 'package:portfolio/common/components/buttons/basic_button.dart';
import 'package:portfolio/core/config/theme/app_colors.dart';

class CartService extends StatelessWidget {
  final String title;
  final String description;
  final String image;
  final VoidCallback? onLearnMore;

  const CartService({
    super.key,
    required this.title,
    required this.description,
    this.onLearnMore,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double cardWidth = screenWidth / 3 - 40; // 3 cards with margin

    return Container(
      width: cardWidth.clamp(200, 500), // min 200, max 500
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(40),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Theme.of(
              context,
            ).colorScheme.primary.withOpacity(0.5), // softer
            blurRadius: 20, // makes it dispersed
            spreadRadius: 0, // avoid border effect
            offset: const Offset(0, 5), // slight downward shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            image,
            width: 40,
            color: Theme.of(context).colorScheme.primary,
          ),

          const SizedBox(height: 30),

          Text(title, style: Theme.of(context).textTheme.headlineMedium),

          const SizedBox(height: 20),

          Text(description, style: Theme.of(context).textTheme.bodySmall),
          const SizedBox(height: 20),

          BasicButton(title: "Learn more", onPressed: onLearnMore ?? () {}),
        ],
      ),
    );
  }
}
