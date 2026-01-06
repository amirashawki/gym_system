import 'package:flutter/material.dart';
import 'package:gym_system/core/utils/constant.dart';
import 'package:gym_system/features/home/presentation/views/widgets/border_container.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
             // ************* Logo Gym *************
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/Images/logo_gym.webp',
                  width: 130,
                  height: 130,
                  color: AppColors.kprimaryColor,
                ),
                SizedBox(width: 300,),
              ],
            ),
             // ************* Sizebox *************
            SizedBox(height: 5,),
            // ************* Text *************
            Text('Gym Management System', style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.w600,
              color: Colors.white
              ),
              ),
            SizedBox(height: 10,),
            // ************* Text 2 *************
            Text('Professional Management Members', style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: AppColors.ksubTitleColor,
              ),
              ),
            // ************* Sizebox ************
            SizedBox(height: 80,),
            // ************* Border 1 ************
            BorderContainer(icons: Icons.person, text1: 'View Members', text2: 'Browse all gym members and subscriptions',),
            SizedBox(height: 20,),
            // ************* Border 2 ************
            BorderContainer(icons: Icons.person_add_alt_1_outlined, text1: 'Add new Members', text2: 'Register a new gym member',),
            SizedBox(height: 20,),
            // ************* Border 3 ************
            BorderContainer(icons: Icons.qr_code, text1: 'Scan QR Subscription', text2: 'Verify member subscription status',),
          ],
        ),
      ),
    );
  }
}

