import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rivy_app/core/constants/validator.dart';
import 'package:rivy_app/core/customs/custom_app_bar.dart';
import 'package:rivy_app/core/customs/custom_text.dart';
import 'package:rivy_app/core/customs/custom_textformfield.dart';
import 'package:rivy_app/core/utils/custom_onboarding_button.dart';
import 'package:rivy_app/routes/namedroutehandler.dart';
import 'package:rivy_app/widgets/footer.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final _firstNameController = TextEditingController();
  final _surNameController = TextEditingController();
  final _bvnController = TextEditingController();
  final _dateOfBirthController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _firstNameController.dispose();
    _surNameController.dispose();
    _bvnController.dispose();
    _dateOfBirthController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Form(
            key: _formKey,
            child: ListView(
              children: [
                CustomText(
                  text: 'Let\'s get Started',
                  fontSize: 30,
                  color: Colors.green.shade700,
                  fontWeight: FontWeight.bold,
                ),
                const SizedBox(height: 5),
                CustomText(
                  text: 'Fill your information below',
                  fontSize: 15,
                  color: Colors.green.shade700,
                  fontWeight: FontWeight.w500,
                ),
                const SizedBox(height: 35),

                /// Phone Number
                CustomBorderedTextFormField(
                  title: 'Phone Number',
                  hintText: "Enter your full name",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your full name';
                    }
                    return null;
                  },
                  controller: _firstNameController,
                ),
                const SizedBox(height: 16),

                /// First Name
                CustomBorderedTextFormField(
                  title: 'First Name',
                  hintText: "Enter your first name",
                  validator: FormValidator.validateEmail,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z@._-]')),
                  ],
                  controller: _surNameController,
                ),
                const SizedBox(height: 16),

                /// Surname
                CustomBorderedTextFormField(
                  title: 'Surname',
                  hintText: 'Surname',
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z@._-]')),
                  ],
                  controller: _surNameController,
                ),
                const SizedBox(height: 16),

                /// BVN
                CustomBorderedTextFormField(
                  title: 'BVN',
                  hintText: 'BVN',
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                  ],
                  controller: _bvnController,
                ),
                const SizedBox(height: 16),

                /// Date of Birth
                CustomBorderedTextFormField(
                  title: 'Date Of Birth',
                  hintText: 'Date of birth',
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'[0-9/]')),
                  ],
                  controller: _dateOfBirthController,
                ),
                const SizedBox(height: 98),

                /// Button
                CustomOnboardingButton(
                  text: "Continue",
                  onPressed: () {
                    Navigator.pushReplacementNamed(
                      context,
                      NamedRouter.successfulScreen,
                    );
                  },
                  textStyle: const TextStyle(color: Colors.white),
                  color: Colors.green,
                ),
                const SizedBox(height: 30),

                /// Footer
               Footer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
