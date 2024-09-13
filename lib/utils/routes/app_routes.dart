
import 'package:classimia/view/features/auth_screen/sign_in_screen.dart';
import 'package:classimia/view/features/splash_screen/splash_screen.dart';
import 'package:get/get.dart';


class AppRoutes {
  static final appRoutes = [

    GetPage(name: SplashScreen.routeName, page: () =>  SplashScreen()),
    GetPage(name: SignInScreen.routeName, page: () => const SignInScreen()),

  ];
}