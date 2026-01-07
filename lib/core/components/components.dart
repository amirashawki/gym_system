import 'package:flutter/material.dart';
import 'package:gym_system/core/utils/constant.dart';
import 'package:gym_system/features/add_user/presentation/views/widgets/text_field.dart';

// ******************************* Text Form Field
Widget TextFormFieldd({required String? hint, bool focus = false}) {
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

// ******************************* Button
Widget customButton({
  double? widgth,
  double? height,
  required String text,
  required VoidCallback onPressed,
}) {
  return SizedBox(
    width: widgth,
    height: height,
    child: ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.kprimaryColor,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
  );
}
