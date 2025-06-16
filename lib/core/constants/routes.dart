import 'package:auvnet_ecommerce_app/features/onboarding/presentation/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case OnboardingScreen.routeName:
      return MaterialPageRoute(builder: (_) => const OnboardingScreen());
    // case '/settings':
    //   return MaterialPageRoute(builder: (_) => const SettingsPage());
    // case '/about':
    //   return MaterialPageRoute(builder: (_) => const AboutPage());
    default:
      return MaterialPageRoute(builder: (_) => const Scaffold());
  }
}