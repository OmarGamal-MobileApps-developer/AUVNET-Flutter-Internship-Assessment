import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreenBodyDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Services Section
            Padding(
              padding: EdgeInsets.all(16.w),
              child: Text(
                'Services:',
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Wrap(
                spacing: 10.w,
                runSpacing: 10.h,
                children: [
                  _buildServiceItem('assets/images/food_icon.png', 'Food'),
                  _buildServiceItem(
                    'assets/images/health_icon.png',
                    'Health & Wellness',
                  ),
                  _buildServiceItem(
                    'assets/images/groceries_icon.png',
                    'Groceries',
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),

            // Get a code Section
            Image.asset(
              'assets/images/get_a_code.png',
              width: double.infinity,
              height: 89.h,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10.h),
            // Shortcuts Section
            Padding(
              padding: EdgeInsets.all(16.w),
              child: Text(
                'Shortcuts:',
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 10.w,
                  children: [
                    _buildShortcutItem(
                      'assets/images/fast_orders_icon.png',
                      'Fast Orders',
                    ),
                    _buildShortcutItem(
                      'assets/images/super_saver_icon.png',
                      'Super Saver',
                    ),
                    _buildShortcutItem(
                      'assets/images/must_tries_icon.png',
                      'Must-tries',
                    ),
                    _buildShortcutItem(
                      'assets/images/give_back_icon.png',
                      'Give Back',
                    ),
                    _buildShortcutItem(
                      'assets/images/best_sellers_icon.png',
                      'Best Sellers',
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.h),

            // Made with M&M's Section
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16.w),
              height: 150.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/mms_promo.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(12.r),
              ),
            ),
            SizedBox(height: 20.h),

            // Popular Restaurants Section
            Padding(
              padding: EdgeInsets.all(16.w),
              child: Text(
                'Popular restaurants nearby',
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 100.h,
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildRestaurantItem(
                    'assets/images/beirut_icon.png',
                    'Beirut',
                    '0.4 miles',
                  ),
                  _buildRestaurantItem(
                    'assets/images/lafah_icon.png',
                    'Lafah',
                    '1.5 miles',
                  ),
                  _buildRestaurantItem(
                    'assets/images/rabiah_icon.png',
                    'Rabiah Ali',
                    '0.8 miles',
                  ),
                  _buildRestaurantItem(
                    'assets/images/sobar_icon.png',
                    'Sobar',
                    '1.2 miles',
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }

  Widget _buildServiceItem(String imagePath, String label) {
    return Column(
      children: [
        Image.asset(imagePath, width: 105.w, height: 70.h),
        SizedBox(height: 5.h),
        Text(label, style: TextStyle(fontSize: 12.sp)),
      ],
    );
  }

  Widget _buildShortcutItem(String imagePath, String label) {
    return Column(
      children: [
        Image.asset(imagePath, width: 65.w, height: 65.h),
        SizedBox(height: 5.h),
        Text(label, style: TextStyle(fontSize: 12.sp)),
      ],
    );
  }

  Widget _buildRestaurantItem(String imagePath, String name, String distance) {
    return Container(
      margin: EdgeInsets.only(right: 10.w),
      width: 80.w,
      height: 70.h,
      child: Column(
        children: [
          CircleAvatar(radius: 25.r, backgroundImage: AssetImage(imagePath)),
          SizedBox(height: 5.h),
          Text(name, style: TextStyle(fontSize: 12.sp)),
          Text(distance, style: TextStyle(fontSize: 10.sp, color: Colors.grey)),
        ],
      ),
    );
  }
}
