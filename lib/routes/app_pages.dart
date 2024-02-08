import 'package:get/get.dart';
import 'package:goldstarllc/ui/screens/dashboard.dart';
import 'package:goldstarllc/ui/screens/login_screen.dart';
import 'package:goldstarllc/ui/screens/scanner_screen.dart';
import 'package:goldstarllc/ui/screens/search_style_screen.dart';

import '../ui/screens/splash_screen.dart';

part 'app_routes.dart';

class AppPages {
  static const initial = Routes.splash;

  static final routes = [
    GetPage(
        name: Routes.splash,
        page: () => SplashScreen(),
        transition: Transition.rightToLeft),
    GetPage(
        name: Routes.login,
        page: () => LoginScreen(),
        transition: Transition.rightToLeft),
    GetPage(
        name: Routes.dashboard,
        page: () => Dashboard(),
        transition: Transition.rightToLeft),
    GetPage(
        name: Routes.searchStyleEntry,
        page: () => SearchStyleEntryScreen(),
        transition: Transition.rightToLeft),
    GetPage(
        name: Routes.scanner,
        page: () => const ScannerScreen(),
        transition: Transition.rightToLeft)
  ];
}
