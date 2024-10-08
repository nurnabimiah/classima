

import 'package:classimia/view/widgets/common_widget/custom_app_bar.dart';
import 'package:classimia/view/widgets/common_widget/custom_dialog_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../widgets/screen_widget/post_history_screen_widget/product_history_card_widget.dart';

class PostHistoryScreen extends StatelessWidget {
  static const String routeName = '/post_history_route';
  const PostHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Post History'),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
            itemCount: 5,
            separatorBuilder: (BuildContext context, int index)=> const SizedBox(height: 5,),
            itemBuilder: (BuildContext context,index){
              return ProductHistoryCardWidget(
                widget: Column(
                  children: [
                    ListItems(
                        iconData: Icons.edit,
                        titleText: 'Edit',
                        onTap: (){

                        }),

                    ListItems(
                        iconData: Icons.delete,
                        titleText: 'Delete',
                        onTap: (){

                         showDialog(context: context, builder: (BuildContext context){
                           return  CustomDialog(
                             onCancel: () {Get.back();  },
                             onRemove: () {  },
                           );
                         });
                        }
                        ),

                  ],
                ),

              );
            },
        ),
      ),

    );
  }
}


