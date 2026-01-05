import 'package:flutter/material.dart';
import 'package:gym_system/core/utils/constant.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            'assets/Images/logo_gym.webp',
            width: 200,
            height: 150,
            color: AppColors.kprimaryColor,
          ),
        ],
      ),
    );
  }
}
