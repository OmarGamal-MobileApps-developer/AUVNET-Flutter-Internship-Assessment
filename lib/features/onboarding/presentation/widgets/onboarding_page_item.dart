import 'package:auvnet_ecommerce_app/features/onboarding/presentation/widgets/page_view_item.dart';
import 'package:flutter/material.dart';

class OnboardingPageItem extends StatelessWidget {
  const OnboardingPageItem({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        PageViewItem( 
          title: 'all-in-one delivery ',
          description: 'Order groceries, medicines, and meals delivered straight to your door',
        ),
        PageViewItem(
          title: 'User-to-User Delivery',
          description: 'Send or receive items from other users quickly and easily',
        ),
        PageViewItem(
          title: 'Sales & Discounts',
          description: 'Discover exclusive sales and deals every day',
        ), 
      ],
    );
  }
}