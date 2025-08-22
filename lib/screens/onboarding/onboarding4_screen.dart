import 'package:flutter/material.dart';
import 'package:rivy_app/core/customs/custom_text.dart';
import 'package:rivy_app/core/utils/custom_onboarding_button.dart';
import 'package:rivy_app/routes/namedroutehandler.dart';
import 'package:rivy_app/widgets/back_button_wrapper.dart';
import 'package:rivy_app/widgets/energy_stack.dart';

class Onboarding4Screen extends StatelessWidget {
  const Onboarding4Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackHandler(
      actionType: BackActionType.exitApp,
      child: Scaffold(
        backgroundColor: Colors.green.shade100,
        body: SafeArea(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    EnergyStackBar(
                      showSkip: false,
                    ),
                    SizedBox(height: 40),
                    RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(text: 'Solar? Weve Got\n'),
                          TextSpan(
                            text: 'You Covered',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
      
                    SizedBox(height: 20),
                    CustomText(
                      text: 'What would you like to do?',
                      color: Colors.green,
                      fontSize: 20,
                    ),
      
                    SizedBox(height: 20),
                    CustomText(
                      text: 'Solar Financing',
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(height: 10),
                    CustomText(
                      text:
                          'Get financing to make solar affordable for \nyour home or business',
                      fontSize: 20,
                      color: Colors.black,
                    ),
      
                    SizedBox(height: 20),
                    CustomText(
                      text: 'Solar Products',
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(height: 10),
                    CustomText(
                      text:
                          'Buy solar products for your oersonal use or\n business resale at wholesale prices',
                      fontSize: 20,
                      color: Colors.black,
                    ),
      
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 40),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomOnboardingButton(
                            text: "Apply for loan",
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                context,
                                NamedRouter.loginScreen,
                              );
                            },
                            textStyle: TextStyle(color: Colors.white),
                            color: Colors.green,
                          ),
                          SizedBox(height: 10),
                          CustomOnboardingButton(
                            text: "Buy your solar products",
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                context,
                                NamedRouter.onboarding1Screen,
                              );
                            },
                            textStyle: TextStyle(color: Colors.white),
                            color: Colors.green,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
