import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_system/core/utils/app_router.dart';
import 'package:gym_system/core/utils/constant.dart';
import 'package:gym_system/features/home/presentation/views/widgets/border_container.dart';
import 'package:iconsax/iconsax.dart';

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
              ],
            ),
            // ************* Sizebox *************
            SizedBox(height: 5),
            // ************* Text *************
            Text(
              'Gym Management System',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            // ************* Text 2 *************
            Text(
              'Professional Management Members',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Color(0xff9AA4C7),
              ),
            ),
            // ************* Sizebox ************
            SizedBox(height: 40),
            // ************* Border 1 ************
            BorderContainer(
              icons: Iconsax.people,
              text1: 'View Members',
              text2: 'Browse all gym members and subscriptions',
              onTap: () {
                GoRouter.of(context).push(AppRouter.kViewUsersView);
              },
            ),
            SizedBox(height: 15),
            // ************* Border 2 ************
            BorderContainer(
              icons: Iconsax.user_add,
              text1: 'Add new Members',
              text2: 'Register a new gym member',
              onTap: () {
                GoRouter.of(context).push(AppRouter.kAddUserView);
              },
            ),
            SizedBox(height: 15),
            // ************* Border 3 ************
            BorderContainer(
              icons: Iconsax.scanning,
              text1: 'Scan QR Subscription',
              text2: 'Verify member subscription status',
              onTap: () {
                GoRouter.of(context).push(AppRouter.kScanQrView);
              },
            ),
          ],
        ),
      ),
    );
  }
}
