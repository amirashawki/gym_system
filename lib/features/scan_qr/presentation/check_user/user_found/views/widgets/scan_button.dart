import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_system/core/components/components.dart';
import 'package:gym_system/core/utils/app_router.dart';
import 'package:gym_system/core/utils/constant.dart';
import 'package:gym_system/features/home/presentation/views/home_view.dart';

class ScanButton extends StatelessWidget {
  const ScanButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // ******************************** Button 1
        Expanded(
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.kprimaryColor,
              padding: const EdgeInsets.symmetric(vertical: 14),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Text(
              'Scan Another',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),

        // ******************************** Sizebox
        const SizedBox(width: 16),

        // ******************************** Button 2
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              NavaigtorAndFinish(context, HomeView());
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.darkButton,
              padding: const EdgeInsets.symmetric(vertical: 14),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Text(
              'Back to Home',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
