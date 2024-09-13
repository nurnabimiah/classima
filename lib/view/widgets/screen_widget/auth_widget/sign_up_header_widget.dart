
import 'package:classimia/utils/app_colors.dart';
import 'package:classimia/utils/images/app_images.dart';
import 'package:classimia/utils/style/app_style.dart';
import 'package:flutter/material.dart';

class SignUpHeaderWidget extends StatelessWidget {
  const SignUpHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // Calculate height based on MediaQuery
    double headerHeight = MediaQuery.of(context).size.height * 0.24; // 30% of screen height

    return Container(
      height: headerHeight,  // Use dynamic height here
      width: MediaQuery.of(context).size.width,
      color: AppColors.appPrimaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // sign up text
          Text(
            'Sign Up',
            style: myStyleInterExtraLarge(context: context),
            textAlign: TextAlign.center,
          ),

          // classima image
          Image.asset(AppImages.appLogo, width: 240, height: 32)


        ],
      ),
    );
  }


}

