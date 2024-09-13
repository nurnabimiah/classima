
import 'package:classimia/view/features/splash_screen/splash_screen.dart';
import 'package:get/get.dart';


class AppRoutes {
  static final appRoutes = [

    GetPage(name: SplashScreen.routeName, page: () => const SplashScreen()),

  ];
}