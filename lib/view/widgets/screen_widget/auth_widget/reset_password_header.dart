
import 'package:classimia/utils/app_colors.dart';
import 'package:classimia/utils/style/app_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPasswordHeader extends StatelessWidget {
  const ResetPasswordHeader({super.key});

  @override
  Widget build(BuildContext context) {
    // Calculate height based on MediaQuery
    double headerHeight = MediaQuery.of(context).size.height * 0.24; // 30% of screen height

    return Container(
      height: headerHeight,  // Use dynamic height here
      width: MediaQuery.of(context).size.width,
      color: AppColors.appPrimaryColor,
      child: Padding(
        padding: EdgeInsets.only(left: 10,top: 30),
        child: Column(

          children: [

            Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                  onPressed: (){Get.back();},
                  icon: const Icon(Icons.arrow_back_ios,color: AppColors.appWhiteColor,size: 18,)),
            ),


            // sign up text
            Text(
              'Reset Password',
              style: myStyleInterExtraLarge(context: context,fontSize: 20),
              textAlign: TextAlign.center,
            ),

            Text(
              'Reset Your Account Password',
              style: myStyleInterMedium(context: context),
              textAlign: TextAlign.center,
            ),




          ],
        ),
      ),
    );
  }


}
