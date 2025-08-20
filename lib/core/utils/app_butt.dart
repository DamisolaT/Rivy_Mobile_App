import 'package:flutter/material.dart';

class CustomOnboardingButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double height;

  const CustomOnboardingButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.height = 45,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300, 
      height:height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6), 
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16,
            
          ),
        ),
      ),
    );
  }
}
