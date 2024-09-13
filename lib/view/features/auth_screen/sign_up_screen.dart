

import 'package:classimia/controller/auth_controller/sign_up_controller.dart';
import 'package:classimia/utils/app_colors.dart';
import 'package:classimia/utils/style/app_style.dart';
import 'package:classimia/view/features/auth_screen/sign_in_screen.dart';
import 'package:classimia/view/widgets/common_widget/custom_button.dart';
import 'package:classimia/view/widgets/common_widget/custom_text_form_filed.dart';
import 'package:classimia/view/widgets/screen_widget/auth_widget/sign_up_header_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../controller/auth_controller/sign_in_controller.dart';

class SignUpScreen extends StatelessWidget {
  static const String routeName = '/sign_up_route';
  SignUpScreen({super.key});

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final SignInController signInController = Get.find<SignInController>();
  final SignUpController signUpController = Get.find<SignUpController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SignUpHeaderWidget(),
             const SizedBox(height:25,),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 14),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   // Name
                   Text('Name', style: myStyleInterLarge(context: context, color: AppColors.appBlackColor)),
                   const SizedBox(height: 10),
                   CustomTextFormFiled(
                     controller: nameController,
                     hintText: 'Name',
                     prefixIcon: const Icon(Icons.person, color: AppColors.appPrimaryColor),
                   ),
                   const SizedBox(height: 20),
        
                   // Email
                   Text('Email', style: myStyleInterLarge(context: context, color: AppColors.appBlackColor)),
                   const SizedBox(height: 10),
                   CustomTextFormFiled(
                     controller: emailController,
                     hintText: 'Email',
                     prefixIcon: const Icon(Icons.email, color: AppColors.appPrimaryColor),
                   ),
                   const SizedBox(height: 20),
        
                   // Password
                   Text('Password', style: myStyleInterLarge(context: context, color: AppColors.appBlackColor)),
                   const SizedBox(height: 10),
                   CustomTextFormFiled(
                     controller: passwordController,
                     hintText: 'Password',
                     obscureText: signInController.obscureText.value,
                     prefixIcon: const Icon(Icons.lock, color: AppColors.appPrimaryColor),
                     suffixIcon: Obx(() => IconButton(
                       icon: Icon(signInController.obscureText.value ? Icons.visibility : Icons.visibility_off),
                       onPressed: () => signInController.togglePasswordVisibility(),
                     )),
                   ),
                   const SizedBox(height: 10),
        
                   // Button
                   Container(
                     color: AppColors.appWhiteColor,
                     child: Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Column(
                         children: [
                           Row(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Obx(() => Checkbox(
                                 value: signUpController.isAgreed.value,
                                 onChanged: (bool? value) {
                                   signUpController.toggleCheckbox(value);
                                 },
                               )),
        
                               Expanded(
                                 child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Text('I have read and agree to the website ',
                                         style: myStyleInterMedium(context: context, color: AppColors.appBrightBlackColor)),
                                     const SizedBox(height: 5),
                                     Text('Terms And Condition',
                                         style: myStyleInterMedium(context: context, color: AppColors.appPrimaryColor)),
                                     const SizedBox(height: 15),
        
                                   ],
                                 ),
                               ),
                             ],
                           ),
                           Padding(
                             padding: const EdgeInsets.symmetric(horizontal: 14.0),
                             child: CustomButtonWidget(
                               onTap: () {
                                 if (signUpController.isAgreed.value) {
                                   // Handle sign-in action
                                 } else {
                                   // Show a message or handle unchecked state
                                 }
                               },
                               title: Text('Sign In', style: myStyleInterLarge(context: context)),
                             ),
                           ),
                         ],
                       ),
                     ),
                   ),
        
                 ],
               ),
             ),
             const SizedBox(height:20,),

            // Rich Text for "Already have an account?"
            Center(
              child: RichText(
                text: TextSpan(
                  text: 'Already have an account? ',
                  style: myStyleInterMedium(context: context, color: AppColors.appBlackColor),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Sign In',
                      style: myStyleInterMedium(context: context, color: AppColors.appPrimaryColor, fontWeight: FontWeight.bold),
                      recognizer: TapGestureRecognizer()..onTap = () {
                        Get.toNamed(SignInScreen.routeName);
                      },
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
