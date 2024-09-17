

import 'package:classimia/view/widgets/common_widget/custom_app_bar.dart';
import 'package:classimia/view/widgets/screen_widget/post_history_screen/product_history_card_widget.dart';
import 'package:flutter/material.dart';

import '../../widgets/screen_widget/home_screen_widget/features_ads_product_widget.dart';

class PostHistoryScreen extends StatelessWidget {
  static const String routeName = '/post_history_route';
  const PostHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Post History',),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
            itemCount: 5,
            separatorBuilder: (BuildContext context, int index)=> const SizedBox(height: 5,),
            itemBuilder: (BuildContext context,index){
              return const ProductHistoryCardWidget();
            },
        ),
      ),

    );
  }
}


