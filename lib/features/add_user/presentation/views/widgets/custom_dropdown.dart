import 'package:flutter/material.dart';
import 'package:gym_system/features/add_user/presentation/views/widgets/text_field.dart';

Widget dropdown() {
  return DropdownButtonFormField<String>(
    // value: '1 Month',
    initialValue: '1 Month',

    dropdownColor: Color(0xFF1E273D),
    items: const [
      DropdownMenuItem(value: '1 Month', child: Text('1 Month')),
      DropdownMenuItem(value: '3 Months', child: Text('3 Months')),
      DropdownMenuItem(value: '6 Months', child: Text('6 Months')),
    ],
    onChanged: (_) {},
    decoration: InputDecoration(
      filled: true,
      fillColor: Color(0xFF1E273D),
      border: borderofTextfield(),
      enabledBorder: borderofTextfield(),
      focusedBorder: borderofTextfield(focus: true),
    ),
    style: const TextStyle(
      color: Colors.white,
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
  );
}
