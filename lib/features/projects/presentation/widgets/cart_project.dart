import 'package:flutter/material.dart';
import 'package:portfolio/common/components/buttons/basic_button.dart';

class CartProject extends StatefulWidget {
  final String title;
  final String description;
  final String image;
  final VoidCallback? onLearnMore;

  const CartProject({
    super.key,
    required this.title,
    required this.description,
    this.onLearnMore,
    required this.image,
  });

  @override
  State<CartProject> createState() => _CartProjectState();
}

class _CartProjectState extends State<CartProject> {
  final ValueNotifier<bool> isHovered = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double cardWidth = (screenWidth > 900)
        ? screenWidth / 3 - 40
        : screenWidth - 40;

    return MouseRegion(
      onEnter: (_) => isHovered.value = true,
      onExit: (_) => isHovered.value = false,
      child: ValueListenableBuilder(
        valueListenable: isHovered,
        builder: (context, value, child) {
          return Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  widget.image,
                  width: cardWidth.clamp(200, 500),
                  height: 300,
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                ),
              ),

              AnimatedOpacity(
                duration: const Duration(milliseconds: 300),
                opacity: value ? 0.6 : 0.0,
                child: Container(
                  width: cardWidth.clamp(200, 500),
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),

              Positioned(
                left: 25,
                bottom: 40,
                right: 25,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 300),
                  opacity: value ? 1.0 : 0.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        widget.title,
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),

                      const SizedBox(height: 20),

                      Text(
                        widget.description,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),

                      const SizedBox(height: 30),

                      BasicButton(
                        title: "Learn More",
                        onPressed: widget.onLearnMore ?? () {},
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

/*
أكيد يا محمد! جهّزت لك **Bio احترافي بالإنجليزية** لتطبيقك **App-Spendly** الذي يقدم مميزات تتبع المصاريف والميزانية وغيرها. هذا bio مناسب لـ **Google Play – App Store – Portfolio – Landing Page**.

---

## ✅ **Spendly – App Bio (English)**

**Spendly is your smart personal finance companion designed to help you take control of your money with clarity and confidence.**
With a clean interface and powerful features, Spendly makes it easy to track expenses, manage budgets, and understand your financial habits—all in one place.

### ⭐ Main Features

* **Expense Tracking:** Log your daily spending effortlessly and stay aware of where your money goes.
* **Smart Budgeting:** Create customized budgets and receive alerts to stay on track.
* **Visual Insights:** Get clear charts and reports that help you analyze your financial behavior.
* **Multi-Category Support:** Organize your expenses into categories for better understanding.
* **Secure & Private:** Your data is safely stored and accessible only to you.

### 🌟 Why Spendly?

Whether you want to save more, stop overspending, or simply understand your finances, Spendly helps you build healthy money habits through simplicity and consistency.

**Spendly — Track smarter. Spend better. Live easier.**

---

إذا تريد نسخة **أقصر / أطول / رسمية / تسويقية / بسيطة** فقط قل لي، وأجهزها لك.

 */
