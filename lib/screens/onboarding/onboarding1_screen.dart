import 'package:flutter/material.dart';
import 'package:rivy_app/core/utils/app_butt.dart';


import 'package:rivy_app/routes/namedroutehandler.dart';
import 'package:rivy_app/widgets/energy_stack.dart';

class Onboarding1Screen extends StatelessWidget {
  const Onboarding1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade700,
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  EnergyStackBar(),

                  const SizedBox(height: 70),

                  RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(text: 'Finance to power your \n'),
                        TextSpan(
                          text: 'home',
                          style: TextStyle(color: Colors.white),
                        ),
                        TextSpan(text: ' or business'),
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
                          text: 'Get the energy solution you need on \n',
                        ),
                        WidgetSpan(child: SizedBox(width: 20)),
                        TextSpan(text: 'flexible terms that work for you'),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: CustomOnboardingButton(
                  text: "See More",
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, NamedRouter.onboarding2Screen);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

