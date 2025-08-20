import 'package:flutter/material.dart';
import 'package:rivy_app/core/utils/app_butt.dart';
import 'package:rivy_app/routes/namedroutehandler.dart';
import 'package:rivy_app/widgets/energy_stack.dart';

class Onboarding3Screen extends StatelessWidget {
  const Onboarding3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade50,
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  EnergyStackBar(),
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
                        TextSpan(text: 'Make Money from your \n'),
                        TextSpan(
                          text: 'solar installation',
                          style: TextStyle(color: Colors.black),
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
                          text: 'Take your impact and turn it into \n',
                        ),
                        WidgetSpan(child: SizedBox(width: 5)),
                        TextSpan(text:'carbon credits and real income'),
                      ],
                    ),
                  ),
                 SizedBox(height: 70,),
                    
                    Container(
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color:  const Color(0xFF2D5A4A),
                      ),
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          
                          children: [
                            SizedBox(height: 20,),
                              Icon(Icons.solar_power, color: Colors.greenAccent,),
                              SizedBox(height: 20,),
                            Text(
                              'Finance for Large communities', 
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                                ),
                              
                              ),
                              SizedBox(height: 10,),
                              Text(
                              'Fund and sacle micro-grids quickly,\n affordably, and sustainably', 
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                //fontWeight: FontWeight.bold
                                ),
                              
                              ),
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                     CustomOnboardingButton(
                    text: "Next",
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, NamedRouter.onboarding4Screen);
                    },
                  ),
                ],
              ),
            )
          ],
        )),
    );
  }
}
