
import 'package:classimia/controller/auth_controller/sign_in_controller.dart';
import 'package:classimia/utils/app_colors.dart';
import 'package:classimia/utils/style/app_style.dart';
import 'package:classimia/view/features/auth_screen/forgot_password_screen.dart';
import 'package:classimia/view/features/auth_screen/sign_up_screen.dart';
import 'package:classimia/view/features/landing_screen/landing_screen.dart';
import 'package:classimia/view/widgets/common_widget/custom_button.dart';
import 'package:classimia/view/widgets/common_widget/custom_text_form_filed.dart';
import 'package:classimia/view/widgets/screen_widget/auth_widget/sign_in_header_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SignInScreen extends StatelessWidget {
  static const String routeName = '/sign_in_route';
  SignInScreen({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final signInController = Get.find<SignInController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SignInHeader(),
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.all(14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                    Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                            onTap: (){
                              Get.toNamed(ForgotPasswordScreen.routeName);
                            },
                            child: Text('Forget Password ?',style: myStyleInterSmall(context: context,color: AppColors.appBlackColor),))),
                    const SizedBox(height: 20),
                    
                    // button
                    CustomButtonWidget(
                        onTap: (){
                          Get.offNamedUntil(LandingScreen.routeName, (route) => false);
                        },
                        title: Text('Sign In',style: myStyleInterLarge(context: context),)),
                    const SizedBox(height: 20),
        
                    // Rich Text for "Create an account?"
                    Center(
                      child: RichText(
                        text: TextSpan(
                          text: "Haven't any account? ",
                          style: myStyleInterMedium(context: context, color: AppColors.appBlackColor),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Create Account',
                              style: myStyleInterMedium(context: context, color: AppColors.appPrimaryColor, fontWeight: FontWeight.bold),
                              recognizer: TapGestureRecognizer()..onTap = () {
                               Get.toNamed(SignUpScreen.routeName);
                              },
                            ),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

