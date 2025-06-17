import 'package:auvnet_ecommerce_app/core/constants/colors.dart';
import 'package:auvnet_ecommerce_app/core/utils/input_validator.dart';
import 'package:auvnet_ecommerce_app/features/auth/presentation/screens/widgets/custom_input_field.dart';
import 'package:auvnet_ecommerce_app/features/onboarding/presentation/widgets/elevated_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreenBody extends StatelessWidget {
  LoginScreenBody({super.key});
  String? email;
  String? password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 80.h),
            Image.asset(
              'assets/images/LOGO.png',
              width: double.infinity,
              height: 336.h,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 50.h),
            CustomInputField(
              onChanged: (value) {
                email = value;
              },
              hintText: 'mail',
              icon: Icons.email_outlined,
              validator: Validators.validateEmail,
            ),
            //SizedBox(height: 20.h),
            CustomInputField(
              onChanged: (value) {
                password = value;
              },
              hintText: 'password',
              validator: Validators.validatePassword,
              icon: Icons.lock_outline,
              obscureText: true,
            ),
            SizedBox(height: 10.h),
            CustomElevatedButton(
              text: 'Login',
              backgroundColor: AppColors.primary,
              colorText: Colors.white,
              onPressed: () async {
                var auth = FirebaseAuth.instance;
                UserCredential user = await auth.createUserWithEmailAndPassword(
                  email: email!,
                  password: password!,
                );
                print(user.user!.email);
              },
            ),
            SizedBox(height: 10.h),
            TextButton(
              onPressed: () {
                // Navigate to register screen
                Navigator.pushNamed(context, 'register');
              },
              child: Text(
                'Create an account',
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Color(0xff1877F2),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
