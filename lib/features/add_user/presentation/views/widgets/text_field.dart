import 'package:flutter/material.dart';
import 'package:gym_system/core/utils/constant.dart';

Widget labelofText(String text, IconData? icon) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 6, top: 14),
    child: Row(
      children: [
        Icon(icon, color: Colors.white, size: 16),
        SizedBox(width: 8),
        Text(
          text,
          style: const TextStyle(color: Color(0xFFB8C1E1), fontSize: 13),
        ),
      ],
    ),
  );
}

Widget inputField(String hint) {
  return TextField(
    style: const TextStyle(color: Colors.white),
    decoration: InputDecoration(
      hintText: hint,
      hintStyle: const TextStyle(
        color: Color(0xFF7F8DB5),
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      filled: true,
      fillColor: Color(0xFF1E273D),
      border: borderofTextfield(),
      enabledBorder: borderofTextfield(),
      focusedBorder: borderofTextfield(focus: true),
      contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
    ),
  );
}

OutlineInputBorder borderofTextfield({bool focus = false}) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(
      color: focus ? AppColors.kprimaryColor : AppColors.kborderColor,
      width: 1,
    ),
  );
}
