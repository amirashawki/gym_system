import 'package:flutter/material.dart';
import 'package:gym_system/core/components/components.dart';
import 'package:gym_system/core/utils/constant.dart';
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
        color: AppColors.kContainerBackgroundColor,
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
          // ************* Text ************
          const Text(
            'Add New Member',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          // ************* Sizebox ************
          const SizedBox(height: 10),
          // ************* Field 1 ************
          labelofText('Full Name', Iconsax.user),
          TextFormFieldd(hint: 'Enter member\'s full name'),
          SizedBox(height: 10),
          // ************* Field 2 ************
          labelofText('Phone Number', Iconsax.call),
          TextFormFieldd(hint: '+20 XXX XXX XXXX'),
          SizedBox(height: 10),
          // ************* Field 3 ************
          labelofText('Subscription Duration', Iconsax.timer_start),
          dropdown(),
          SizedBox(height: 10),
          // ************* Field 4 ************
          labelofText('Start date', Iconsax.calendar_edit),
          dateField(context),
          const SizedBox(height: 24),
           // ************* Button ************
          customButton(
            text: 'Add Member',
            onPressed: () {},
            widgth: double.infinity,
            height: 48,
          ),
        ],
      ),
    );
  }
}
