import 'package:flutter/material.dart';
import 'package:gym_system/core/utils/constant.dart';
import 'package:gym_system/features/scan_qr/presentation/check_user/user_found/views/widgets/custom_row.dart';
import 'package:gym_system/features/scan_qr/presentation/check_user/user_found/views/widgets/scan_button.dart';

class UserDataCard extends StatelessWidget {
  const UserDataCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.kContainerBackgroundColor,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.border),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            blurRadius: 25,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
           // ******************************** Exit
           Align(
            alignment: Alignment.topRight,
             child: IconButton(onPressed: () {
               Navigator.pop(context);
             }, icon: Icon(Icons.close, color: Colors.white, size: 25,)),
           ),
          const SizedBox(height: 16),
           // ******************************** image
          CircleAvatar(
            radius: 80,
            child: ClipOval(
              child: Image.asset('assets/images/tom.webp',
              fit: BoxFit.cover,
              width: 160,
              height: 160,
              ),
            ),
            
          ),

          const SizedBox(height: 16),
           // ******************************** Scanned qr code
          const Text(
            'QR Code Scanned',
            style: TextStyle(
              color: AppColors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 6),
           // ******************************** Subscription
          const Text(
            'Subscription Expired',
            style: TextStyle(color: AppColors.kprimaryColor, fontSize: 14),
          ),

          const SizedBox(height: 24),
           // ******************************** Member Details
          Container(
            width: 440,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColors.kContainerBackgroundColor_2,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: AppColors.border),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    Icon(Icons.person, color: AppColors.white, size: 18),
                    SizedBox(width: 8),
                    Text(
                      'Member Details',
                      style: TextStyle(
                        color: AppColors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                 // ******************************** Name
                customrow('Name:', 'Sarah Johnson'),
                 // ******************************** Phone
                customrow('Phone:', '+1 234-567-8902'),
                 // ******************************** ID
                customrow('Id:', '65'),
                 // ******************************** Divider
                const Divider(color: AppColors.border, height: 28),
                 // ******************************** Start date
                customrow('Start Date:', '11/15/2024'),
                 // ******************************** End date
                customrow('End Date:', '12/15/2024'),
                 // ******************************** Sizebox
                const SizedBox(height: 12),
                 // ******************************** Status
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Status:',
                      style: TextStyle(color: AppColors.subText),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.kprimaryColor.withOpacity(0.15),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        'Expired',
                        style: TextStyle(color: AppColors.kprimaryColor, fontSize: 12),
                      ),
                    ),
                  ],
                ),
                 // ******************************** Sizebox
                const SizedBox(height: 24),
                  // ******************************** Button
                ScanButton(),
              ],
            ),
          ),
      
        ],
      ),
    );
  }
}
