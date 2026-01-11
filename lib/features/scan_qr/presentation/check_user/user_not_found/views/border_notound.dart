import 'package:flutter/material.dart';
import 'package:gym_system/core/components/components.dart';
import 'package:gym_system/core/utils/constant.dart';
import 'package:gym_system/features/scan_qr/presentation/check_user/user_found/views/widgets/scan_button.dart';
import 'package:gym_system/features/scan_qr/presentation/scan_qr_home/view/widgets/Instruction_item.dart';

class BorderNotound extends StatelessWidget {
  const BorderNotound({super.key});

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

      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // ******************************** Error
            Icon(
              Icons.warning_amber_outlined,
              color: AppColors.kprimaryColor,
              size: 60,
            ),
            SizedBox(height: 15,),
            // ******************************** Text 1
            const Text(
              'Member Not Found',
              style: TextStyle(
                color: AppColors.white,
                fontSize: 21,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10,),
            // ******************************** Text 2
            const Text(
              'The scanned QR code does not match any\nmember in the system',
              textAlign: TextAlign.center,
              style: TextStyle(color: AppColors.ksubTitleColor, fontSize: 14),
            ),
            SizedBox(height: 20,),
        
            // ******************************** Container 2
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
                          'Possible Reasons',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                  
                        SizedBox(height: 14),
                  
                        // Bullet items
                        InstructionItem(
                          text: 'Member has been removed from the system',
                        ),
                        InstructionItem(
                          text: 'QR code is damaged or invalid',
                        ),
                        InstructionItem(
                          text: 'QR code belongs to a different gym location',
                        ),
                      ],
                    ),
                  ),
                ),
            // ******************************** Sizebox
            SizedBox(height: 20,),
            // ******************************** Button
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              customButton(
              height: 40,
              widgth: 200,
              text: 'Try Again',
              onPressed: () {  }
              
              ),
        
              SizedBox(width: 10.0,),
        
              customButton(
              height: 40,
              widgth: 200,
              text: 'Cancel',
              color_background: AppColors.darkButton,
              onPressed: () { 
                Navigator.pop(context);
               }
              ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
