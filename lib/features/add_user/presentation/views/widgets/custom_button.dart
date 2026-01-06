import 'package:flutter/material.dart';
import 'package:gym_system/core/utils/constant.dart';

class ButtonAddMember extends StatelessWidget {
  const ButtonAddMember({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: ElevatedButton.icon(
        onPressed: () {},
        icon: const Icon(Icons.person_add, size: 18),
        label: const Text(
          'Add Member',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.kprimaryColor,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
