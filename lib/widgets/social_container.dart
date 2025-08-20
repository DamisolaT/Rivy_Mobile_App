import 'package:flutter/material.dart';
import 'package:rivy_app/core/customs/custom_text.dart';

class SocialContainer extends StatelessWidget {
  const SocialContainer({
    super.key, required this.title, required this.icon, 
  });

  final String title;
    final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Colors.white,
        border: Border.all(),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           Icon(icon, color: Colors.black),
          const SizedBox(width: 8),
          CustomText(
            text: title,
            fontSize: 15,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
