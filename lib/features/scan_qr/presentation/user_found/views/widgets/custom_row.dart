import 'package:flutter/material.dart';
import 'package:gym_system/core/utils/constant.dart';

Widget customrow(String label, String value) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
                 // ******************************** Text 1
        Text(label, style: const TextStyle(color: AppColors.subText)),
                 // ******************************** Text 2
        Text(value, style: const TextStyle(color: Colors.white, fontSize: 13)),
      ],
    ),
  );
}
