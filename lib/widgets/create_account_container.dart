import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rivy_app/core/customs/custom_text.dart';

class CreateAccountContainer extends StatelessWidget {
  const CreateAccountContainer({
    super.key, required this.title, required this.subtitle, required this.icon,
  });

  final String title;
  final String subtitle;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 363.w,
      height: 79.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13),
        child: Row(
          children: [
            Icon(icon),
            SizedBox(width: 11,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height:12 ,),
                CustomText(
                  text: title,
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                CustomText(
                  text: subtitle,
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
