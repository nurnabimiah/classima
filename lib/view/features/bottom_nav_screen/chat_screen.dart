

import 'package:classimia/utils/app_colors.dart';
import 'package:classimia/utils/images/app_images.dart';
import 'package:classimia/utils/style/app_style.dart';
import 'package:classimia/view/widgets/common_widget/custom_app_bar.dart';
import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: const CustomAppBar(title:'Chat',),
      body: ListView.builder(
      
        itemCount: 5,
        itemBuilder: (BuildContext context, index){
          return Column(
            children: [
              SizedBox(height: 60,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: (){},
                    child: Row(
                      children: [
                        ClipRRect(
                           borderRadius: BorderRadius.circular(50),
                            child: Image.asset(AppImages.chatProfile)),
                        const SizedBox(width:20,),
                        Text('Sunny Leone Apo',style: myStyleInterLarge(context: context,color: AppColors.appBlackColor),)

                      ],
                    ),
                  ),
                ),
              ),
              const Divider(
                thickness: 0.3,
                color: AppColors.appBlackColor,
              ),
            ],
          );

          },

      ),

    );
  }
}
