

import 'package:classimia/controller/auth_controller/reset_password_controller.dart';
import 'package:classimia/utils/app_colors.dart';
import 'package:classimia/utils/style/app_style.dart';
import 'package:classimia/view/widgets/common_widget/custom_button.dart';
import 'package:classimia/view/widgets/screen_widget/auth_widget/reset_password_header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/common_widget/custom_text_form_filed.dart';

class ResetPasswordScreen extends StatelessWidget {
  static const String routeName = '/reset_password_route';
   ResetPasswordScreen({super.key});

  final _passwordController = TextEditingController();
  final _resetPasswordController = TextEditingController();
  final resetController = Get.find<ResetPasswordController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          const ResetPasswordHeader(),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Password
                Text('Password', style: myStyleInterMedium(context: context, color: AppColors.appBlackColor)),
                const SizedBox(height: 10),
                Obx(()=> CustomTextFormFiled(
                  controller: _passwordController,
                  hintText: 'Password',
                  obscureText: resetController.isObscure.value,
                  prefixIcon: const Icon(Icons.lock, color: AppColors.appPrimaryColor),
                  suffixIcon:  IconButton(
                    icon: Icon(resetController.isObscure.value ? Icons.visibility : Icons.visibility_off),
                    onPressed: () => resetController.toggleObscure(),
                  )
                ),),
                const SizedBox(height: 10),


                //Retype password
                Text('Retype Password', style: myStyleInterMedium(context: context, color: AppColors.appBlackColor)),
                const SizedBox(height: 10),
                Obx(()=> CustomTextFormFiled(
                    controller: _passwordController,
                    hintText: 'Password',
                    obscureText: resetController.isObscure.value,
                    prefixIcon: const Icon(Icons.lock, color: AppColors.appPrimaryColor),
                    suffixIcon:  IconButton(
                      icon: Icon(resetController.isObscure.value ? Icons.visibility : Icons.visibility_off),
                      onPressed: () => resetController.toggleObscure(),
                    )
                ),),
                const SizedBox(height: 25),

                // Button
                CustomButtonWidget(onTap: (){}, title: Text('Continue',style: myStyleInterLarge(context: context),)),

              ],
            ),
          )


        ],
      ),
    );
  }
}
