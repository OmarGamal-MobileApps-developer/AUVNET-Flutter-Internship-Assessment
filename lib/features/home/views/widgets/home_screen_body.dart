import 'package:auvnet_ecommerce_app/features/home/views/widgets/appBar_home_screen.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(130),
        child: AppbarHomeScreen(),
      ), 
    );
  }
}
