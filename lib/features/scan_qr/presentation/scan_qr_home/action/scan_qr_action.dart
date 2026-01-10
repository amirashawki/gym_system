import 'package:gym_system/features/scan_qr/presentation/show_profile/view/show_dialog.dart';

class ScanQrAction {

  static void startScanning_action(context, String? action) {
   
    switch(action) {
      case 'start_scanning': {
        print("Scanning started");
        SubscriptionDialog.showDialog(context);
        
        break;
      }
    }
  }
}