import 'package:auvnet_ecommerce_app/features/home/views/widgets/appBar_home_screen.dart';
import 'package:auvnet_ecommerce_app/features/home/views/widgets/home_screen_body_details.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(140),
        child: AppbarHomeScreen(),
      ),
      body: HomeScreenBodyDetails(),
    );
  }
}
