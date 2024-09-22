
import 'package:classimia/view/widgets/common_widget/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../../widgets/screen_widget/post_history_screen_widget/product_history_card_widget.dart';

class FavouriteAdsScreen extends StatelessWidget {
  static const String routeName = '/favourite_ads_route';
  const FavouriteAdsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Favourite Ads'),

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
                      iconData: Icons.view_comfy_alt_rounded,
                      titleText: 'View details',
                      onTap: (){}),

                  ListItems(
                      iconData: Icons.delete,
                      titleText: 'Delete',
                      onTap: (){}),

                ],
              ),

            );
          },
        ),
      ),

    );
  }
}
