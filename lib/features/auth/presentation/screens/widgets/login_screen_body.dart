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

  // دالة لعرض رسالة تنبيه
  void _showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

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
                // التحقق من البيانات
                if (email == null || email!.isEmpty) {
                  _showSnackBar(context, 'الرجاء إدخال البريد الإلكتروني');
                  return;
                }
                if (password == null || password!.isEmpty) {
                  _showSnackBar(context, 'الرجاء إدخال كلمة المرور');
                  return;
                }

                var auth = FirebaseAuth.instance;
                try {
                  UserCredential user = await auth.signInWithEmailAndPassword(
                    email: email!.trim(),
                    password: password!,
                  );
                  Navigator.pushNamedAndRemoveUntil(context, 'home', (route) => false);
                } on FirebaseAuthException catch (e) {
                  String message;
                  switch (e.code) {
                    case 'user-not-found':
                      message = 'لا يوجد مستخدم بهذا الإيميل';
                      break;
                    case 'wrong-password':
                      message = 'كلمة المرور غير صحيحة';
                      break;
                    case 'invalid-email':
                      message = 'البريد الإلكتروني غير صالح';
                      break;
                    default:
                      message = 'فشل تسجيل الدخول: ${e.message}';
                  }
                  _showSnackBar(context, message);
                } catch (e) {
                  _showSnackBar(context, 'حدث خطأ غير متوقع: $e');
                }
              },
            ),
            SizedBox(height: 10.h),
            TextButton(
              onPressed: () {
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