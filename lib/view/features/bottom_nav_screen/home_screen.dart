
import 'package:classimia/utils/app_colors.dart';
import 'package:classimia/utils/images/app_images.dart';
import 'package:classimia/utils/style/app_style.dart';
import 'package:classimia/view/widgets/screen_widget/home_screen_widget/home_header_widget.dart';
import 'package:classimia/view/widgets/screen_widget/home_screen_widget/popular_category_card.dart';
import 'package:flutter/material.dart';

import '../../widgets/screen_widget/home_screen_widget/features_ads_product.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appPrimaryColor,
        centerTitle: true,
        title: Image.asset(AppImages.appLogo,height: 80,width: 80,),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      drawer: const Drawer(),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        
            // Header
            Container(
              color: AppColors.appWhiteColor,
              height: 48,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child:HomeHeaderWidget(
                        imagePath: AppImages.locationIcon,
                        text: 'All Location', onTap: () {  },),
                    ),
                  ),
                  Container(height: 48,width: 0.5,color: AppColors.appBlackColor,),
                  
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child:HomeHeaderWidget(
                        imagePath: AppImages.categoryIcon,
                        text: 'Category', onTap: () {  },),
                    ),
                  ),
                  Container(height: 48,width: 0.5,color: AppColors.appBlackColor,),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child:HomeHeaderWidget(
                        imagePath: AppImages.filterIcon,
                        text: 'Filter', onTap: () {  },),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,),
        
            // popular categories text
            Padding(
              padding:  const EdgeInsets.only(left: 14.0),
              child: Text('Popular Categories',style: myStyleInterLarge(context: context,color: AppColors.appBlackColor),),
            ),
            const SizedBox(height: 10,),
            GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3
                ),
                itemCount: categories.length,
                itemBuilder: (context,index){
                  return CategoryCard(category: categories[index]);
                }),
            const SizedBox(height: 10,),


            // Feature ads product
            Padding(
              padding:  const EdgeInsets.only(left: 14.0),
              child: Text('Popular Categories',style: myStyleInterLarge(context: context,color: AppColors.appBlackColor),),
            ),
            const SizedBox(height: 10,),

            Padding(
              padding:const EdgeInsets.symmetric(horizontal: 8.0),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Two columns
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 10.0,
                  childAspectRatio:0.70, // Adjust the aspect ratio as needed
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return ProductCard(product: products[index]);
                },
              ),
            ),


            
        
        
        
          ],
        ),
      ),


    );
  }
}
