import 'package:flutter/material.dart';
import 'package:rivy_app/core/utils/custom_onboarding_button.dart';

import 'package:rivy_app/routes/namedroutehandler.dart';
import 'package:rivy_app/widgets/back_button_wrapper.dart';
import 'package:rivy_app/widgets/energy_card.dart';
import 'package:rivy_app/widgets/energy_stack.dart';
import 'package:rivy_app/widgets/greeN_grid.dart';

class Onboarding2Screen extends StatelessWidget {
  const Onboarding2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackHandler(
      actionType: BackActionType.exitApp,
      child: Scaffold(
        backgroundColor: const Color(0xFF2D5A4A),
      
        body: SafeArea(
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      EnergyStackBar(),
                      SizedBox(height: 20),
                      RichText(
                        textAlign: TextAlign.center,
                        text: const TextSpan(
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(text: 'Buy Solar product',style: TextStyle(color: Colors.lightGreen), ),
                            TextSpan(
                              text: ' at\n',
                              style: TextStyle(color: Colors.white),
                            ),
                            TextSpan(
                              text: 'Best Prices',
                              style: TextStyle(color: Colors.white),
                            ),
                            
                          ],
                        ),
                      ),
                  
                      const SizedBox(height: 20),
                  
                      RichText(
                        textAlign: TextAlign.start,
                        text: const TextSpan(
                          style: TextStyle(fontSize: 20, color: Colors.black),
                          children: [
                            TextSpan(
                              text: 'Get quality solar products on your \n',
                              style: TextStyle(color: Colors.lightGreen),
                            ),
                            WidgetSpan(child: SizedBox(width: 20)),
                            TextSpan(text: 'terms, flexible and affordable',
                            style: TextStyle(color: Colors.lightGreen),),
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      
                      GreenGridWidget(),
                       SizedBox(height: 10,),
                      EnergyCard(),
                      SizedBox(height: 20,),
                      CustomOnboardingButton(
                      text: "Next",
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, NamedRouter.onboarding3Screen);
                      },
                      textStyle: TextStyle(color: Colors.white),
                      color: Colors.green,
                    ),
                     
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30,)
            ],
          ),
        ),
      ),
    );
  }
}
