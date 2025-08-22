import 'package:flutter/material.dart';
import 'package:rivy_app/core/customs/custom_text.dart';
import 'package:rivy_app/core/utils/custom_onboarding_button.dart';
import 'package:rivy_app/routes/namedroutehandler.dart';
import 'package:rivy_app/widgets/back_button_wrapper.dart';

class SuccessfulScreen extends StatefulWidget {
  const SuccessfulScreen({super.key});

  @override
  State<SuccessfulScreen> createState() => _SuccessfulScreenState();
}

class _SuccessfulScreenState extends State<SuccessfulScreen> {
  @override
  Widget build(BuildContext context) {
    return BackHandler(
      actionType: BackActionType.goToOnboarding4,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  height: 156,
                  width: 156,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.green,
                  ),
                  child: Center(
                    child: Icon(Icons.check, size: 100, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 21),
              CustomText(
                text: 'Successful',
                fontSize: 24,
                color: Colors.green.shade700,
                fontWeight: FontWeight.normal,
              ),
              SizedBox(height: 12),
              CustomText(
                text: 'your account has been successfully created',
                fontSize: 16,
                color: Colors.green.shade700,
                fontWeight: FontWeight.normal,
              ),
              SizedBox(height: 219),
               CustomOnboardingButton(
                    text: "Continue",
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                        context,
                        NamedRouter.loginScreen,
                      );
                    },
                    textStyle: const TextStyle(color: Colors.white),
                    color: Colors.green,
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
