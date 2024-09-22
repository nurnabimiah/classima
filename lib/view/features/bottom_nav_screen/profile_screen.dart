

import 'package:classimia/utils/app_colors.dart';
import 'package:classimia/utils/images/app_images.dart';
import 'package:classimia/utils/style/app_style.dart';
import 'package:classimia/view/features/favourite_screen/favourite_ads_screen.dart';
import 'package:classimia/view/features/post_history_screen/post_history_screen.dart';
import 'package:classimia/view/widgets/common_widget/custom_app_bar.dart';
import 'package:classimia/view/widgets/screen_widget/profile_screen_widget/profile_screen_title_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  static const String routeName = '/profile_screen_route';
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:const CustomAppBar(title: 'My Account',),

      body: SingleChildScrollView(
        child: Column(
          children: [

            SizedBox(
              height: 90,
              child: Padding(
                padding:  const EdgeInsets.symmetric(horizontal: 14,vertical: 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(AppImages.chatProfile)),
                    const SizedBox(width: 20,),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text("Sunny Leone", style: myStyleInterLarge(context: context,color: AppColors.appBlackColor),),
                        Text("sunny@gmail.com", style: myStyleInterMedium(context: context,color: AppColors.appBlackColor),),

                      ],),
                    )
                  ],
                ),
              )

            ),

            // post history
            ProfileScreenTitleWidget(title: 'Post History',
                onTap: (){
                 Get.toNamed(PostHistoryScreen.routeName);
                }
            ),
            const SizedBox(height: 10,),

            // Favourite
            ProfileScreenTitleWidget(title: 'Favourite',
                onTap: (){
                  Get.toNamed(FavouriteAdsScreen.routeName);
                }
            ),
            const SizedBox(height: 10,),

            // change password
            ProfileScreenTitleWidget(title: 'Change Password', onTap: (){}),
            const SizedBox(height: 10,),

            // Contact us
            ProfileScreenTitleWidget(title: 'Contact Us', onTap: (){}),
            const SizedBox(height: 10,),

            // Privacy Policy
            ProfileScreenTitleWidget(title: 'Privacy Policy', onTap: (){}),
            const SizedBox(height: 10,),

            // About us
            ProfileScreenTitleWidget(title: 'About Us', onTap: (){}),

        





          ],
        ),
      ),

    );
  }
}
