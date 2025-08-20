import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rivy_app/core/constants/validator.dart';
import 'package:rivy_app/core/customs/custom_app_bar.dart';
import 'package:rivy_app/core/customs/custom_text.dart';
import 'package:rivy_app/core/customs/custom_textformfield.dart';
import 'package:rivy_app/core/utils/app_butt.dart';
import 'package:rivy_app/routes/namedroutehandler.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _emailController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  final _referralController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailController.dispose();
    _referralController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40,),
                CustomText(
                  text: 'Let\'s get Started',
                  fontSize: 30,
                  color: Colors.green.shade700,
                  fontWeight: FontWeight.bold,
                ),
                const SizedBox(height: 5),
                CustomText(
                  text:
                      'Please provide your phone number to help secure your account',
                  fontSize: 15,
                  color: Colors.green.shade700,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(height: 40),
                CustomBorderedTextFormField(
                  title: 'Phone Number',
                  hintText: "Enter your full name",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your full name';
                    }
                    return null;
                  },
                  controller: _phoneNumberController,
                ),
                const SizedBox(height: 16),
                CustomBorderedTextFormField(
                  title: 'Email Address',
                  hintText: "Enter your email address",
                  validator: FormValidator.validateEmail,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z@._-]')),
                  ],
                  controller: _emailController,
                ),
                const SizedBox(height: 16),
                CustomBorderedTextFormField(
                  title: 'Referral Code',
                  hintText: '688OYX',
                  validator: FormValidator.validateEmail,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z@._-]')),
                  ],
                  controller: _referralController,
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an account?",
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(width: 5),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacementNamed(
                          context,
                          NamedRouter.loginScreen,
                        );
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 70),
                CustomOnboardingButton(
                  text: "Continue",
                  onPressed: () {
                    Navigator.pushReplacementNamed(
                      context,
                      NamedRouter.onboarding1Screen,
                    );
                  },
                ),
                SizedBox(height: 40),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        text: '@2025 Rivy, All rights reserved. v3.6.9',
                        fontSize: 10,
                        color: Colors.green.shade700,
                        fontWeight: FontWeight.bold,
                      ),
                      const SizedBox(height: 20),
                      CustomText(
                        text: 'Term Policy - Privacy Policy',
                        fontSize: 10,
                        color: Colors.green.shade700,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
