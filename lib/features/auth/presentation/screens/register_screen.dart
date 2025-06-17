import 'package:auvnet_ecommerce_app/features/auth/presentation/screens/widgets/register_screen_body.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});
  static const String routeName = 'register';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RegisterScreenBody(),
    );
  }
}