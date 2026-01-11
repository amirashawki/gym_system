import 'package:flutter/material.dart';
import 'package:gym_system/core/utils/constant.dart';
import 'package:gym_system/core/widgets/cutom_button_back.dart';
import 'package:gym_system/features/scan_qr/presentation/user_found/views/widgets/user_data_card.dart';

class UserFoundView extends StatelessWidget {
  const UserFoundView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        children: [
          SizedBox(height: 20),
          Center(child: CutomButtonBack(width: 480)),
          SizedBox(height: 20),
          Center(child: UserDataCard()),
        ],
      ),
    );
  }
}
