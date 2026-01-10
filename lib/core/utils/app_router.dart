import 'package:go_router/go_router.dart';
import 'package:gym_system/features/add_user/presentation/views/add_user_view.dart';
import 'package:gym_system/features/home/presentation/views/home_view.dart';
import 'package:gym_system/features/scan_qr/presentation/scan_qr_home/view/scan_qr_view.dart';
import 'package:gym_system/features/view_users/presentation/views/view_users_view.dart';

abstract class AppRouter {
  static final kScanQrView = '/ScanQrView';
  static final kAddUserView = '/AddUserView';
  static final kViewUsersView = '/ViewUsersView';
  static final router = GoRouter(
    routes: [GoRoute(  path: '/',  builder: (context, state) {return HomeView();},),
      GoRoute(path: kScanQrView,builder: (context, state) {  return ScanQrView();},),

      GoRoute(path: kAddUserView,builder: (context, state) {  return AddUserView();},),
      GoRoute(path: kViewUsersView,builder: (context, state) {  return ViewUsersView();},),
    ],
  );
}
