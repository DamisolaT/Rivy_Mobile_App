import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rivy_app/core/customs/custom_app_bar.dart';
import 'package:rivy_app/core/customs/custom_text.dart';
import 'package:rivy_app/routes/namedroutehandler.dart';
import 'package:rivy_app/widgets/create_account_container.dart';
import 'package:rivy_app/widgets/footer.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
                text: 'Choose the type of account you want with Rivy',
                fontSize: 15,
                color: Colors.green.shade700,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 32),
              GestureDetector(
                onTap: (){
                  Navigator.pushReplacementNamed(context, NamedRouter.formScreen); 
                },
                child: CreateAccountContainer(
                  title: 'Create a Personal Account',
                  subtitle: 'Personalize your experience with Rivy',
                  icon: (Icons.person),
                ),
              ),
              SizedBox(height: 16,),
              CreateAccountContainer(
                title: 'Create a Business Account',
                subtitle: 'Get your business on Rivy',
                icon: (Icons.business),
              ),
              Spacer(),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
