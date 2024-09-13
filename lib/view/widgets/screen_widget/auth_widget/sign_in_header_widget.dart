

import 'package:classimia/utils/app_colors.dart';
import 'package:classimia/utils/images/app_images.dart';
import 'package:classimia/utils/style/app_style.dart';
import 'package:flutter/material.dart';

class SignInHeader extends StatelessWidget {
  const SignInHeader({super.key});

  @override
  Widget build(BuildContext context) {
    // Calculate height based on MediaQuery
    double headerHeight = MediaQuery.of(context).size.height * 0.3; // 30% of screen height

    return Container(
      height: headerHeight,  // Use dynamic height here
      width: MediaQuery.of(context).size.width,
      color: AppColors.appPrimaryColor,
      child: Stack(
        children: [
          // Hotel image
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset(AppImages.hotelImage),
          ),

          // Classima logo
          Positioned(
            top: headerHeight * 0.52,  // Adjust top position relative to height
            left: 0,
            right: 0,
            child: Image.asset(AppImages.appLogo, width: 240, height: 35),
          ),

          // Sign In text
          Positioned(
            top: headerHeight * 0.4,  // Adjust top position relative to height
            left: 0,
            right: 0,
            child: Text(
              'Sign In',
              style: myStyleInterExtraLarge(context: context),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
