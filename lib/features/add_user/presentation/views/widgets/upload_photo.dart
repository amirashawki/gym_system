import 'package:flutter/material.dart';
import 'package:gym_system/core/utils/constant.dart';
import 'package:iconsax/iconsax.dart';

class UploadPhoto extends StatelessWidget {
  const UploadPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          ClipRRect(
            clipBehavior: Clip.none,
            child: Container(
              padding: EdgeInsets.all(25),
              decoration: BoxDecoration(
                color: Color(0xFF1E273D),
                shape: BoxShape.circle,
                border: Border.all(color: AppColors.kborderColor),
              ),
              child: Icon(Iconsax.user, color: Color(0xFF7F8DB5), size: 30),
            ),
          ),
          Positioned(
            bottom: 15,
            right: 0,
            child: Icon(Iconsax.edit, color: AppColors.kprimaryColor, size: 17),
          ),
        ],
      ),
    );
  }
}
