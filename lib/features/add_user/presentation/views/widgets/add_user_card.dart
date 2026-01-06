import 'package:flutter/material.dart';
import 'package:gym_system/core/utils/constant.dart';
import 'package:gym_system/features/add_user/presentation/views/widgets/custom_button.dart';
import 'package:gym_system/features/add_user/presentation/views/widgets/custom_dropdown.dart';
import 'package:gym_system/features/add_user/presentation/views/widgets/date_field.dart';
import 'package:gym_system/features/add_user/presentation/views/widgets/text_field.dart';
import 'package:iconsax/iconsax.dart';

class AddMemberCard extends StatelessWidget {
  const AddMemberCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 520,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Color(0xFF151C2F),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.kborderColor),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Add New Member',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),

          labelofText('Full Name', Iconsax.user),
          inputField('Enter member\'s full name'),

          labelofText('Phone Number', Iconsax.call),
          inputField('+1 234-567-8900'),

          labelofText('Subscription Duration', Iconsax.timer_1),
          dropdown(),

          labelofText('Start Date', Icons.calendar_month),
          dateField(context),

          const SizedBox(height: 24),

          ButtonAddMember(),
        ],
      ),
    );
  }
}
