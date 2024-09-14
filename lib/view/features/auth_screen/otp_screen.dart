
import 'package:classimia/utils/app_colors.dart';
import 'package:classimia/view/features/auth_screen/reset_password_screen.dart';
import 'package:classimia/view/features/auth_screen/sign_up_screen.dart';
import 'package:classimia/view/widgets/common_widget/custom_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import '../../../utils/style/app_style.dart';

class OtpScreen extends StatelessWidget {
  static const String routeName = '/otp_route';
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: [

              Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                      onTap: (){
                       Get.back();
                      },
                      child: Text('Cancel',
                        style: myStyleInterSmall(context: context,color: Colors.red,fontWeight: FontWeight.w700,fontSize: 14),))),
              const SizedBox(height: 80,),
              Text('Enter Otp Code',
                style: myStyleInterExtraLarge(context: context,color: AppColors.appBlackColor,fontWeight: FontWeight.w700,),),
              const SizedBox(height:5,),
              Text('Type otp code that send to your email',
                style: myStyleInterSmall(context: context,color: Colors.red,fontWeight: FontWeight.w700,fontSize: 14),),
              const SizedBox(height: 40),

              // Add Pinput widget
              Pinput(
                length: 4,
                onChanged: (value) {
                  // Handle OTP input changes
                  print('OTP entered: $value');
                },
                onCompleted: (value) {
                  // Handle OTP completion
                  print('OTP completed: $value');
                },
                defaultPinTheme: PinTheme(
                  width: 48,
                  height: 48,
                  textStyle: myStyleInterExtraLarge(context: context,color: AppColors.appBlackColor),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: AppColors.appBlackColor),
                  ),
                ),
              ),
              const SizedBox(height: 25),

              // Didn't get otp?
              Center(
                child: RichText(
                  text: TextSpan(
                    text: "Didn't get otp? ",
                    style: myStyleInterMedium(context: context, color: AppColors.appBlackColor),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Resend',
                        style: myStyleInterMedium(context: context, color: AppColors.appPrimaryColor, fontWeight: FontWeight.bold),
                        recognizer: TapGestureRecognizer()..onTap = () {
                          Get.toNamed(SignUpScreen.routeName);
                        },
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 25),

              // Button
              Padding(
                padding:const EdgeInsets.symmetric(horizontal:40.0,vertical: 0.0),
                child: CustomButtonWidget(onTap: (){
                  Get.toNamed(ResetPasswordScreen.routeName);
                }, title: Text('Verify',style: myStyleInterLarge(context: context),)),
              ),

            ],
          ),
        ),
      ),
    
    
    );
  }
}
