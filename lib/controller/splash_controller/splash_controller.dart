

import 'package:classimia/view/features/auth_screen/sign_in_screen.dart';
import 'package:get/get.dart';

class SplashController extends GetxController{


  @override
  void onInit() {
    navigateToSignIn();
    super.onInit();
  }

 void navigateToSignIn() async{
    await Future.delayed(const Duration(seconds: 3));
    Get.toNamed(SignInScreen.routeName);
  }



}