import 'package:flutter/material.dart';
import 'package:gym_system/core/widgets/cutom_button_back.dart';
import 'package:gym_system/features/scan_qr/presentation/views/widgets/border_scan.dart';

class ScanQrView extends StatelessWidget {
  const ScanQrView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
            children: [
              // ************* Back ************
              CutomButtonBack(),
              // ************* Sizebox ************
              SizedBox(height: 20),
              // ************* Border ************
              BorderScan(),
            ],
          ),
      ),
    );
  }
}
