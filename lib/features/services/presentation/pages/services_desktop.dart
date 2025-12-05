import 'package:flutter/material.dart';
import 'package:portfolio/common/components/texts/header_text.dart';
import 'package:portfolio/features/services/data/repositories/services_data.dart';
import 'package:portfolio/features/services/presentation/widgets/cart_service.dart';

class ServicesDesktopPage extends StatelessWidget {
  const ServicesDesktopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.only(top: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          const HeaderText(title1: "My", title2: "Services"),

          const SizedBox(height: 150),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: services
                .map(
                  (service) => CartService(
                    title: service.title,
                    description: service.description,
                    image: service.image,
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
