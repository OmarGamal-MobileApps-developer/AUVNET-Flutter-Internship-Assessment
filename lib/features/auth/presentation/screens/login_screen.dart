import 'package:auvnet_ecommerce_app/features/auth/presentation/screens/widgets/login_screen_body.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  static const String routeName = 'login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginScreenBody(),
    );
  }
}