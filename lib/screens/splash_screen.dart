import 'package:flutter/material.dart';
import 'package:rivy_app/core/customs/custom_text.dart';
import 'package:rivy_app/core/utils/app_assets.dart';
import 'package:rivy_app/routes/namedroutehandler.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      // ignore: use_build_context_synchronously
      Navigator.pushReplacementNamed(context, NamedRouter.onboarding1Screen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min, 
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min, 
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AppAssets.splashImage, width: 50, height: 50),
                const SizedBox(width: 8), 
                const CustomText(
                  text: 'rivy',
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
            const SizedBox(height: 10), 
            const CustomText(
              text: 'Rivy (Formerly Payhippo)',
              fontSize: 15,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
