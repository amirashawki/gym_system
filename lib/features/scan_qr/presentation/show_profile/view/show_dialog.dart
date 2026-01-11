import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:gym_system/core/utils/constant.dart';
import 'package:gym_system/core/widgets/cutom_button_back.dart';
import 'package:gym_system/features/scan_qr/presentation/check_user/user_found/views/widgets/user_data_card.dart';
import 'package:gym_system/features/scan_qr/presentation/check_user/user_not_found/views/border_notound.dart';

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
              // Container(
              //   child: Column(
              //     children: [
              //       Center(
              //         child: BorderNotound(),
              //       )
              //     ],
              //   ),
              // ),

             // ******************************** User is found
              Container(
                child: Column(
                  children: [
                  Center(
                    child: UserDataCard()
                    ),
                    ],
                    ),
              ),

            ],
          ),
        );
      },
    );
  }
}
