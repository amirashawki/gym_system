import 'package:flutter/material.dart';
import 'package:gym_system/core/components/components.dart';
import 'package:gym_system/core/utils/constant.dart';
import 'package:gym_system/features/scan_qr/presentation/scan_qr_home/action/scan_qr_action.dart';
import 'package:gym_system/features/scan_qr/presentation/scan_qr_home/view/widgets/Instruction_item.dart';

class BorderScan extends StatelessWidget {
  const BorderScan({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 500,
        decoration: BoxDecoration(
          color: AppColors.kContainerBackgroundColor,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppColors.kborderColor),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 8,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ************* Text ************
              Text(
                'Scan QR Code',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // ************* Container 1 ************
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.kContainerBackgroundColor_2,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // ************* Avatar ************
                        CircleAvatar(
                          radius: 40,
                          backgroundColor: AppColors.kColors,
                          child: Icon(
                            Icons.camera_alt_outlined,
                            color: AppColors.kContainerBackgroundColor,
                            size: 40,
                          ),
                        ),
                        // ************* Sizebox ************
                        SizedBox(height: 10),
                        // ************* Ready to scan ************
                        Text(
                          'Ready to Scan',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        // ************* Sizebox ************
                        SizedBox(height: 15),
                        // ************* Position the QR code ************
                        Text(
                          'Position the QR code within the frame to scan',
                          style: TextStyle(
                            color: Color(0xff9AA4C7),
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        
                        // ************* Button start ************
                        customButton(
                          widgth: 140,
                          height: 40,
                          text: 'Start Scanning',
                          onPressed: () => ScanQrAction.startScanning_action(context, "start_scanning"),
                        )
                      ],
                    ),
                  ),
                ),
              ),

              // ************* Container 2 ************
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color:  AppColors.kContainerBackgroundColor_2,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.white.withOpacity(0.08)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      // Title
                      Text(
                        'Instructions',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                
                      SizedBox(height: 14),
                
                      // Bullet items
                      InstructionItem(
                        text:
                            'Ensure the QR code is clearly visible and well-lit',
                      ),
                      InstructionItem(
                        text: 'Hold the code steady within the camera frame',
                      ),
                      InstructionItem(
                        text:
                            'Member details will appear automatically after scanning',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
