import 'dart:async';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:rivy_app/core/customs/custom_app_bar.dart';
import 'package:rivy_app/core/customs/custom_text.dart';
import 'package:rivy_app/routes/namedroutehandler.dart';

class VerifyOtpScreen extends StatefulWidget {
  const VerifyOtpScreen({super.key});

  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {
  String currentText = "";
  int _secondsRemaining = 30;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_secondsRemaining > 0) {
        setState(() {
          _secondsRemaining--;
        });
      } else {
        _timer.cancel();
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
       appBar: const CustomAppBar(
   
  ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: 'Verify Phone Number',
              fontSize: 30,
              color: Colors.green.shade700,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(height: 10),
           CustomText(
              text: 'We have sent a 6 digit verification code \n on +23480809192',
              fontSize: 15,
              color: Colors.green.shade700,
              fontWeight: FontWeight.w500,
            ),
            const SizedBox(height: 30),

            // OTP fields
            PinCodeTextField(
              appContext: context,
              length: 6,
              onChanged: (value) {
                setState(() => currentText = value);
              },
              onCompleted: (value) {
              
              },
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(8),
                fieldHeight: 50,
                fieldWidth: 40,
                inactiveColor: Colors.grey.shade400,
                activeColor: Colors.green,
                selectedColor: Colors.green,
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),

            // Next button
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: currentText.length == 6
                    ? () {
                        Navigator.pushReplacementNamed(context, NamedRouter.createAccountScreen); 
                        
                      }
                    : null,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                child: const Text("Next"),
              ),
            ),
            const SizedBox(height: 20),

            
            Center(
              child: Text(
                _secondsRemaining > 0
                    ? "Resend code in 00:${_secondsRemaining.toString().padLeft(2, '0')}"
                    : "Didn’t receive code? Resend",
                style: TextStyle(
                  color: _secondsRemaining > 0 ? Colors.black54 : Colors.green,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
