import 'package:flutter/material.dart';
import 'package:rivy_app/core/customs/custom_text.dart';
import 'package:rivy_app/core/utils/app_assets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isChecked = false;
  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        elevation: 0,
        backgroundColor: const Color(0xFF2D5A4A),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: 'Let\'s get Started',
              fontSize: 30,
              color: Colors.green.shade700,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(height: 5),
            CustomText(
              text: 'Log in to access your account and continue \n with Rivy',
              fontSize: 15,
              color: Colors.green.shade700,
              fontWeight: FontWeight.w500,
            ),
            const SizedBox(height: 30),

            // Mobile number input
            const Text(
              'Phone Number',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: phoneController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                prefixIcon: SizedBox(
                  width: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(AppAssets.nijalogo, height: 24, width: 24),
                      const SizedBox(width: 5),
                      CustomText(
                        text: '+1',
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 16,
                      ),
                      const SizedBox(width: 5),
                      Container(height: 30, width: 1, color: Colors.black12),
                    ],
                  ),
                ),
                hintText: "Enter phone number",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),

            const SizedBox(height: 15),

            Row(
              children: [
                Checkbox(
                  value: isChecked,
                  onChanged: (value) {
                    setState(() {
                      isChecked = value ?? false;
                    });
                  },
                ),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      style: const TextStyle(color: Colors.black),
                      children: [
                        const TextSpan(text: 'I agree to Rivy\'s'),
                        WidgetSpan(child: SizedBox(width: 5)),
                        TextSpan(
                          text: 'User Agreement',
                          style: const TextStyle(color: Colors.green),
                        ),
                        const TextSpan(text: ' & '),
                        TextSpan(
                          text: 'Privacy Policy',
                          style: const TextStyle(color: Colors.green),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),

            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                onPressed: isChecked ? () {} : null,
                style: ElevatedButton.styleFrom(
                  backgroundColor: isChecked
                      ? Colors.green
                      : Colors.grey.shade300,
                  foregroundColor: Colors.green.shade50,
                ),
                child: const Text('Next'),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don’t have an account? ",
                  style: TextStyle(fontSize: 14),
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    "Sign up ",
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),

            // SocialContainer(title: 'Continue with Email', icon:Icons.email,),
            //  SocialContainer(title: 'Continue with Apple', icon:Icons.apple,),
            //   SocialContainer(title: 'Continue with Googel', icon:Icons.google,),
          ],
        ),
      ),
    );
  }
}
