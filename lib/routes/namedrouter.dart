import 'package:flutter/material.dart';
import 'package:rivy_app/routes/namedroutehandler.dart';
import 'package:rivy_app/screens/login/login_screen.dart';

import 'package:rivy_app/screens/onboarding/onboarding1_screen.dart';
import 'package:rivy_app/screens/onboarding/onboarding2_screen.dart';
import 'package:rivy_app/screens/onboarding/onboarding3_screen.dart';
import 'package:rivy_app/screens/onboarding/onboarding4_screen.dart';
import 'package:rivy_app/screens/signup/sign_up_screen.dart';
import 'package:rivy_app/screens/splash_screen.dart';
import 'package:rivy_app/screens/verify/verify_opt_screen.dart';

Map<String, WidgetBuilder> get Iroutes => {
  NamedRouter.splash: (context) => const SplashScreen(),
  
   NamedRouter.onboarding1Screen: (context) => Onboarding1Screen(),
   NamedRouter.onboarding2Screen: (context) => Onboarding2Screen(),
   NamedRouter.onboarding3Screen: (context) => Onboarding3Screen(),
   NamedRouter.onboarding4Screen: (context) => Onboarding4Screen(),
   NamedRouter.loginScreen: (context) => LoginScreen(),
   NamedRouter.verifyOtpScreen: (context) => VerifyOtpScreen(),
    NamedRouter.signUpScreen: (context) => SignUpScreen() 
};
