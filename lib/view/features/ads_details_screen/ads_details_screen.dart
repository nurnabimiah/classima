


import 'package:classimia/controller/ads_details_controller/ads_details_controller.dart';
import 'package:classimia/utils/app_colors.dart';
import 'package:classimia/utils/app_text/app_text.dart';
import 'package:classimia/utils/style/app_style.dart';
import 'package:classimia/view/widgets/common_widget/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/screen_widget/ads_details_widget/ads_details_header_widget.dart';

class AdsDetailsScreen extends StatelessWidget {
  static const String routeName = '/ads_details_route';
  AdsDetailsScreen({super.key});
  final adsDetailsController = Get.find<AdsDetailsController>();

  // List of image URLs
  final List<String> imageUrls = [
    'https://via.placeholder.com/600x400', // Replace with your image URLs
    'https://via.placeholder.com/601x401',
    'https://via.placeholder.com/602x402',
    'https://via.placeholder.com/603x403',
    'https://via.placeholder.com/604x404',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: const CustomAppBar(title: 'Add Details',),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 170,
              child: Stack(
                children: [
                  PageView.builder(
                    controller: adsDetailsController.pageController,
                    onPageChanged: adsDetailsController.onPageChanged,
                    itemCount: imageUrls.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Image.network(imageUrls[index], fit: BoxFit.cover, width: double.infinity,),
                        ),
                      );
                    },
                  ),
                  Positioned(
                    bottom: 15.0,
                    right: 15.0,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                      color: Colors.black54,
                      child: Obx(
                            () => Text(
                          '${adsDetailsController.selectedIndex.value + 1}/${imageUrls.length}',
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Thumbnail images
            Padding(
              padding:const EdgeInsets.symmetric(horizontal: 8.0),
              child: SizedBox(
                height: 55,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: imageUrls.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () => adsDetailsController.changeImage(index),
                      child: Obx(() => Container(
                          margin: const EdgeInsets.symmetric(horizontal: 4.0),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: adsDetailsController.selectedIndex.value == index
                                  ? Colors.red
                                  : Colors.grey,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              imageUrls[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),

            // header portion
            const AdsProductHeaderWidget(isChatInitiallySelected: true,),

            // Description
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Description',style: myStyleInterLarge(context: context,color: AppColors.appBlackColor),),
                  Text(AppText.productDescription,style: myStyleInterSmall(context: context, color: AppColors.appBlackColor),textAlign: TextAlign.justify,),
                  const SizedBox(height: 20,),
                  const Divider(thickness:0.3,color: AppColors.appBlackColor,),

                  Row(
                    children: [
                      Text('Category : ',style: myStyleInterMedium(context: context,color: AppColors.appBlackColor,fontWeight: FontWeight.w600),),
                      Text('Fashion Cloth and Jewellery',style: myStyleInterMedium(context: context,color: AppColors.appBlackColor),),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      Text('Date : ',style: myStyleInterMedium(context: context,color: AppColors.appBlackColor,fontWeight: FontWeight.w600),),
                      Text('15 september,2024',style: myStyleInterMedium(context: context,color: AppColors.appBlackColor),),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      Text('Type : ',style: myStyleInterMedium(context: context,color: AppColors.appBlackColor,fontWeight: FontWeight.w600),),
                      Text('Sell',style: myStyleInterMedium(context: context,color: AppColors.appBlackColor),),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      Text('Date : ',style: myStyleInterMedium(context: context,color: AppColors.appBlackColor,fontWeight: FontWeight.w600),),
                      Text('15 september,2024',style: myStyleInterMedium(context: context,color: AppColors.appBlackColor),),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      Text('Category : ',style: myStyleInterMedium(context: context,color: AppColors.appBlackColor,fontWeight: FontWeight.w600),),
                      Text('Fashion Cloth and Jewellery',style: myStyleInterMedium(context: context,color: AppColors.appBlackColor),),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      Text('Date : ',style: myStyleInterMedium(context: context,color: AppColors.appBlackColor,fontWeight: FontWeight.w600),),
                      Text('15 september,2024',style: myStyleInterMedium(context: context,color: AppColors.appBlackColor),),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      Text('Category : ',style: myStyleInterMedium(context: context,color: AppColors.appBlackColor,fontWeight: FontWeight.w600),),
                      Text('Fashion Cloth and Jewellery',style: myStyleInterMedium(context: context,color: AppColors.appBlackColor),),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      Text('Date : ',style: myStyleInterMedium(context: context,color: AppColors.appBlackColor,fontWeight: FontWeight.w600),),
                      Text('15 september,2024',style: myStyleInterMedium(context: context,color: AppColors.appBlackColor),),
                    ],
                  ),



                ],
              ),
            )





          ],
        ),
      ),

    );
  }
}



