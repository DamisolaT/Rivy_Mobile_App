import 'package:flutter/material.dart';
import 'package:rivy_app/core/customs/custom_text.dart';

class Footer extends StatelessWidget {
  const Footer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter, 
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomText(
            text: '@2025 Rivy, All rights reserved. v3.6.9',
            fontSize: 10,
            color: Colors.green.shade700,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(height: 20),
          CustomText(
            text: 'Term Policy - Privacy Policy',
            fontSize: 10,
            color: Colors.green.shade700,
            fontWeight: FontWeight.bold,
          ),
        ],
      ),
    );
  }
}