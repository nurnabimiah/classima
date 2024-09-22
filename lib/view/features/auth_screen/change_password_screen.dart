

import 'package:classimia/controller/auth_controller/change_password_controller.dart';
import 'package:classimia/utils/app_colors.dart';
import 'package:classimia/utils/style/app_style.dart';
import 'package:classimia/view/widgets/common_widget/custom_app_bar.dart';
import 'package:classimia/view/widgets/common_widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../widgets/common_widget/custom_text_form_filed.dart';
import '../landing_screen/landing_screen.dart';

class ChangePasswordScreen extends StatelessWidget {
  static const String routeName = '/change_password_route_ads_route';
   ChangePasswordScreen({super.key});
  final changePasswordController = Get.find<ChangePasswordController>();

  final typeOldPassController = TextEditingController();
  final newPassController = TextEditingController();
  final reTypePassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Change Password'),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0,vertical: 50),
        child: Column(
          children: [

            // type old password
            Obx(()=> CustomTextFormFiled(
                controller: typeOldPassController,
                hintText: 'Type Old Password',
                obscureText: changePasswordController.isObscure.value,
                prefixIcon: const Icon(Icons.lock, color: AppColors.appPrimaryColor),
                suffixIcon:  IconButton(
                  icon: Icon(changePasswordController.isObscure.value ? Icons.visibility : Icons.visibility_off),
                  onPressed: () => changePasswordController.toggleObscure(),
                )
            ),),
            const SizedBox(height: 10,),

            // type new password
            Obx(()=> CustomTextFormFiled(
                controller: typeOldPassController,
                hintText: 'Type New Password',
                obscureText: changePasswordController.isObscure.value,
                prefixIcon: const Icon(Icons.lock, color: AppColors.appPrimaryColor),
                suffixIcon:  IconButton(
                  icon: Icon(changePasswordController.isObscure.value ? Icons.visibility : Icons.visibility_off),
                  onPressed: () => changePasswordController.toggleObscure(),
                )
            ),),
            const SizedBox(height: 10,),

            // retype password
            Obx(()=> CustomTextFormFiled(
                controller: typeOldPassController,
                hintText: 'Type New Password',
                obscureText: changePasswordController.isObscure.value,
                prefixIcon: const Icon(Icons.lock, color: AppColors.appPrimaryColor),
                suffixIcon:  IconButton(
                  icon: Icon(changePasswordController.isObscure.value ? Icons.visibility : Icons.visibility_off),
                  onPressed: () => changePasswordController.toggleObscure(),
                )
            ),),
            const SizedBox(height: 20,),

            // Button
            CustomButtonWidget(
                onTap: (){
                  //Get.offNamedUntil(LandingScreen.routeName, (route) => false);
                },
                title: Text('Change',style: myStyleInterLarge(context: context),)),





          ],
        ),
      ),

    );
  }
}
