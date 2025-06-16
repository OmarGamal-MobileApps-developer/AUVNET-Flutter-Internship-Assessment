import 'package:auvnet_ecommerce_app/features/onboarding/presentation/widgets/onboarding_page_item.dart';
import 'package:flutter/material.dart';

class OnboardingScreenBody extends StatelessWidget {
  const OnboardingScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       Expanded (child: OnboardingPageItem()),
      ],
      
    );
  }
}