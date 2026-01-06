import 'package:flutter/material.dart';
import 'package:gym_system/core/utils/constant.dart';
import 'package:gym_system/features/add_user/presentation/views/widgets/text_field.dart';

Widget dateField(BuildContext context) {
  DateTime? selectedDate;
  final TextEditingController dateController = TextEditingController();
  return TextField(
    controller: dateController,
    readOnly: true,
    style: const TextStyle(color: Colors.white),
    decoration: InputDecoration(
      hintText: 'Select date',
      hintStyle: TextStyle(
        color: Color(0xFF7F8DB5),
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      suffixIcon: const Icon(
        Icons.calendar_month,
        color: Colors.white,
        size: 18,
      ),
      filled: true,
      fillColor: Color(0xFF1E273D),
      border: borderofTextfield(),
      enabledBorder: borderofTextfield(),
      focusedBorder: borderofTextfield(focus: true),
    ),
    onTap: () async {
      final DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: selectedDate ?? DateTime.now(),
        firstDate: DateTime(2020),
        lastDate: DateTime(2035),
        builder: (context, child) {
          return Theme(
            data: Theme.of(context).copyWith(
              colorScheme: const ColorScheme.dark(
                primary: AppColors.kprimaryColor,
                onPrimary: Colors.white,
                surface: Color(0xFF151C2F),
                onSurface: Colors.white,
              ),
            ),
            child: child!,
          );
        },
      );

      if (pickedDate != null) {
        selectedDate = pickedDate;
        dateController.text =
            "${pickedDate.day.toString().padLeft(2, '0')}/"
            "${pickedDate.month.toString().padLeft(2, '0')}/"
            "${pickedDate.year}";
      }
    },
  );
}
