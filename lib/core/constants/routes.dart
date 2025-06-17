import 'package:auvnet_ecommerce_app/features/auth/presentation/screens/login_screen.dart';
import 'package:auvnet_ecommerce_app/features/auth/presentation/screens/register_screen.dart';
import 'package:auvnet_ecommerce_app/features/onboarding/presentation/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case OnboardingScreen.routeName:
      return MaterialPageRoute(builder: (_) => const OnboardingScreen());
    case LoginScreen.routeName:
      return MaterialPageRoute(builder: (_) => const LoginScreen());
    case RegisterScreen.routeName:
      return MaterialPageRoute(builder: (_) => const RegisterScreen());
    default:
      return MaterialPageRoute(builder: (_) => const Scaffold());
  }
}