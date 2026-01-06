import 'package:flutter/material.dart';
import 'package:gym_system/core/utils/app_router.dart';
import 'package:gym_system/core/utils/constant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: AppColors.kbackgroundColor),
    );
  }
}
