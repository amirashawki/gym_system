import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:gym_system/core/utils/constant.dart';
import 'package:gym_system/core/widgets/cutom_button_back.dart';
import 'package:gym_system/features/scan_qr/presentation/user_found/views/widgets/user_data_card.dart';

class SubscriptionDialog {
  static void showDialog(BuildContext context) {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: "",
      transitionDuration: const Duration(milliseconds: 400),
      pageBuilder: (context, animation, secondaryAnimation) => SizedBox(),
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        return Scaffold(
          backgroundColor: const Color.fromARGB(179, 0, 0, 0),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // ******************************** User is not found
              Center(
                child: Container(
                  width: 300,
                  decoration: BoxDecoration(
                    color: AppColors.kContainerBackgroundColor,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: AppColors.kprimaryColor),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        blurRadius: 25,
                        offset: const Offset(0, 10),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Icon(Icons.close, color: Colors.white, size: 70),
                        SizedBox(height: 30 ),
                        Text(
                          'Member is not found!',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // ******************************** User is found
              // Container(
              //   child: Column(children: [Center(child: UserDataCard())]),
              // ),
            ],
          ),
        );
      },
    );
  }
}
