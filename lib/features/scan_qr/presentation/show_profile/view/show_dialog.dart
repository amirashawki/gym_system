import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:gym_system/core/utils/constant.dart';

class SubscriptionDialog {
  static void showDialog(BuildContext context) {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: "",
      transitionDuration: const Duration(milliseconds: 400),
      pageBuilder: (context, animation, secondaryAnimation) => SizedBox(),
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        return Container(
          decoration: BoxDecoration(
          color: AppColors.kContainerBackgroundColor,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppColors.kborderColor),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 8,
              offset: Offset(0, 4),
            ),
          ],
        ),

        child: Column(
          children: [
            Text('test', style: TextStyle(color: Colors.white),),
          ],
        ),
        
        );
      },
    );
  }
}