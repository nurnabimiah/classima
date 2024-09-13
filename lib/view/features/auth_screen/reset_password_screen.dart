

import 'package:classimia/utils/app_colors.dart';
import 'package:classimia/utils/style/app_style.dart';
import 'package:classimia/view/widgets/common_widget/custom_button.dart';
import 'package:classimia/view/widgets/common_widget/custom_text_form_filed.dart';
import 'package:classimia/view/widgets/screen_widget/auth_widget/reset_password_header.dart';
import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatelessWidget {
  static const String routeName = '/reset_password_route';
  ResetPasswordScreen({super.key});

  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const ResetPasswordHeader(),
          // Email
          Padding(
            padding: const EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Email', style: myStyleInterLarge(context: context, color: AppColors.appBlackColor)),
                const SizedBox(height: 10),
                CustomTextFormFiled(
                  controller: emailController,
                  hintText: 'Email',
                  prefixIcon: const Icon(Icons.email, color: AppColors.appPrimaryColor),
                ),
                const SizedBox(height: 25),

                // Button
                CustomButtonWidget(onTap: (){

                }, title: Text('Continue',style: myStyleInterLarge(context: context),)),

              ],
            ),
          )



        ],
      ),

    );
  }
}
