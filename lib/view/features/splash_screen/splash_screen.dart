

import 'package:classimia/controller/splash_controller/splash_controller.dart';
import 'package:classimia/utils/app_colors.dart';
import 'package:classimia/utils/app_text/app_text.dart';
import 'package:classimia/utils/images/app_images.dart';
import 'package:classimia/utils/style/app_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = '/splash_route';
  SplashScreen({super.key});
  final splashController = Get.find<SplashController>();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.appPrimaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset(AppImages.appLogo,width: 240,height: 40,)),
          const SizedBox(height: 20,),
          Text(AppText.appSlogan, style: myStyleInterMedium(context: context),textAlign: TextAlign.center,)

        ],
      ),

    );
  }
}
