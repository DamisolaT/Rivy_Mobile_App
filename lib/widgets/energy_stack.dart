import 'package:flutter/material.dart';
import 'package:rivy_app/core/customs/custom_text.dart';
import 'package:rivy_app/routes/namedroutehandler.dart';

class EnergyStackBar extends StatelessWidget {
  final bool showSkip; 

  const EnergyStackBar({
    super.key,
    this.showSkip = true, 
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

        // Only show skip if allowed
        if (showSkip)
          GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(
                context,
                NamedRouter.onboarding4Screen,
              );
            },
            child: CustomText(
              text: 'Skip',
              color: Colors.green.shade500,
              fontSize: 18,
            ),
          ),
      ],
    );
  }
}
