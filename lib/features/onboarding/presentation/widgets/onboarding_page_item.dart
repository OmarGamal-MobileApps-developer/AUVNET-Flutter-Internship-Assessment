import 'package:flutter/material.dart';
import 'package:auvnet_ecommerce_app/features/onboarding/presentation/widgets/page_view_item.dart';

class OnboardingPageItem extends StatefulWidget {
  const OnboardingPageItem({super.key});

  @override
  State<OnboardingPageItem> createState() => _OnboardingPageItemState();
}

class _OnboardingPageItemState extends State<OnboardingPageItem> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            children: [
              PageViewItem(
                title: 'all-in-one delivery',
                description: 'Order groceries, medicines, and meals delivered straight to your door',
                currentPage: _currentPage,
                pageController: _pageController,
              ),
              PageViewItem(
                title: 'User-to-User Delivery',
                description: 'Send or receive items from other users quickly and easily',
                currentPage: _currentPage,
                pageController: _pageController,
              ),
              PageViewItem(
                title: 'Sales & Discounts',
                description: 'Discover exclusive sales and deals every day',
                currentPage: _currentPage,
                pageController: _pageController,
              ),
            ],
          ),
        ],
      ),
    );
  }
}