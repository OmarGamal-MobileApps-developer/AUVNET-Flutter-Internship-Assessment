import 'package:auvnet_ecommerce_app/core/constants/colors.dart';
import 'package:auvnet_ecommerce_app/features/auth/presentation/screens/register_screen.dart';
import 'package:auvnet_ecommerce_app/features/onboarding/presentation/widgets/elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.title,
    required this.description,
    required this.currentPage,
    required this.pageController,
  });

  final String image = 'assets/images/onboarding_screen.png';
  final String title;
  final String description;
  final int currentPage;
  final PageController pageController;

  void _goToNextPage(BuildContext context) {
    if (currentPage < 2) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 447.h,
          child: Stack(
            children: [
              Positioned.fill(
                child: Image.asset(
                  image,
                  alignment: Alignment.topCenter,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 50.h),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 28.sp,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Text(
          description,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 14.sp, color: Colors.black54),
        ),
        SizedBox(height: 70.h),
        CustomElevatedButton(
          text: 'Get Started',
          backgroundColor: AppColors.primary,
          colorText: Colors.white,
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const RegisterScreen()),
            );
          },
        ),
        SizedBox(height: 10.h),
        if (currentPage < 2)
          TextButton(
            onPressed: () => _goToNextPage(context),
            child: Text(
              'Next',
              style: TextStyle(fontSize: 14.sp, color: AppColors.primaryVariant),
            ),
          ),
      ],
    );
  }
}