import 'package:flutter/material.dart';
import 'package:gym_system/core/utils/constant.dart';
import 'package:gym_system/features/scan_qr/presentation/user_found/views/widgets/custom_row.dart';
import 'package:gym_system/features/scan_qr/presentation/user_found/views/widgets/scan_button.dart';

class UserDataCard extends StatelessWidget {
  const UserDataCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 480,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.container,
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
          //image
          Container(
            height: 70,
            width: 70,
            decoration: const BoxDecoration(shape: BoxShape.circle),
            child: const Icon(Icons.person, color: Colors.white, size: 32),
          ),

          const SizedBox(height: 16),

          const Text(
            'QR Code Scanned',
            style: TextStyle(
              color: AppColors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 6),

          const Text(
            'Subscription Expired',
            style: TextStyle(color: AppColors.red, fontSize: 14),
          ),

          const SizedBox(height: 24),

          // Member Details
          Container(
            width: 440,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColors.innerContainer,
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

                customrow('Name:', 'Sarah Johnson'),
                customrow('Phone:', '+1 234-567-8902'),

                const Divider(color: AppColors.border, height: 28),

                customrow('Start Date:', '11/15/2024'),
                customrow('End Date:', '12/15/2024'),

                const SizedBox(height: 12),

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
                        color: AppColors.red.withOpacity(0.15),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        'Expired',
                        style: TextStyle(color: AppColors.red, fontSize: 12),
                      ),
                    ),
                  ],
                ),
                // Buttons
                const SizedBox(height: 24),
                ScanButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
