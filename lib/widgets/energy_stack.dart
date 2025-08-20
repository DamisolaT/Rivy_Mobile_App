import 'package:flutter/material.dart';
import 'package:rivy_app/core/customs/custom_text.dart';

class EnergyStackBar extends StatelessWidget {
  const EnergyStackBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green,
              ),
              child: const Icon(Icons.menu, color: Colors.white),
            ),
            const SizedBox(width: 10),
             CustomText(
              text: 'EnergyStack',
              color: Colors.green.shade500,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
         CustomText(
          text: 'Skip',
          color: Colors.white,
          fontSize: 20,
        ),
      ],
    );
  }
}
