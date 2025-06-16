import 'package:auvnet_ecommerce_app/features/onboarding/presentation/widgets/onboarding_screen_body.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});
  static const String routeName = 'onboarding';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:OnboardingScreenBody() ,
    );
  }
}