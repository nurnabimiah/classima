
import 'package:classimia/view/features/ads_details_screen/ads_details_screen.dart';
import 'package:classimia/view/features/auth_screen/change_password_screen.dart';
import 'package:classimia/view/features/auth_screen/otp_screen.dart';
import 'package:classimia/view/features/auth_screen/forgot_password_screen.dart';
import 'package:classimia/view/features/auth_screen/reset_password_screen.dart';
import 'package:classimia/view/features/auth_screen/sign_in_screen.dart';
import 'package:classimia/view/features/auth_screen/sign_up_screen.dart';
import 'package:classimia/view/features/favourite_screen/favourite_ads_screen.dart';
import 'package:classimia/view/features/landing_screen/landing_screen.dart';
import 'package:classimia/view/features/post_history_screen/post_history_screen.dart';
import 'package:classimia/view/features/splash_screen/splash_screen.dart';
import 'package:get/get.dart';


class AppRoutes {
  static final appRoutes = [

    GetPage(name: SplashScreen.routeName, page: () =>  SplashScreen()),
    GetPage(name: SignInScreen.routeName, page: () =>  SignInScreen()),
    GetPage(name: SignUpScreen.routeName, page: () =>  SignUpScreen()),
    GetPage(name: ForgotPasswordScreen.routeName, page: () => ForgotPasswordScreen()),
    GetPage(name: OtpScreen.routeName, page: () => const OtpScreen()),
    GetPage(name: ResetPasswordScreen.routeName, page: () =>  ResetPasswordScreen()),
    GetPage(name: ChangePasswordScreen.routeName, page: () =>   ChangePasswordScreen()),
    GetPage(name: LandingScreen.routeName, page: () => const LandingScreen()),
    GetPage(name: AdsDetailsScreen.routeName, page: () =>  AdsDetailsScreen()),
    GetPage(name: PostHistoryScreen.routeName, page: () =>  const PostHistoryScreen()),
    GetPage(name: FavouriteAdsScreen.routeName, page: () =>  const FavouriteAdsScreen()),

  ];
}