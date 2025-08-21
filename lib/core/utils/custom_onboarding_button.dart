import 'package:flutter/material.dart';

class CustomOnboardingButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double height;
  final Color? color;
  final TextStyle textStyle;

  const CustomOnboardingButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.height = 45,
    this.color,
    required this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color ?? Theme.of(context).primaryColor, // ✅ background color
          foregroundColor: textStyle.color, // ✅ uses textStyle color
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
        ),
        child: Text(
          text,
          style: textStyle, // ✅ now uses the style passed in
        ),
      ),
    );
  }
}
