
import 'package:classimia/utils/app_colors.dart';
import 'package:classimia/utils/style/app_style.dart';
import 'package:flutter/material.dart';
import 'package:popover/popover.dart';

class ProductHistoryCardWidget extends StatelessWidget {
  final Widget widget;
  const ProductHistoryCardWidget({super.key,required this.widget});



  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Product Image
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                width: 90,
                height: 120,
                'https://via.placeholder.com/100', // Replace with your image URL
                fit: BoxFit.fitHeight,
              ),
            ),
          ),

          // Product Details and Price
          Expanded(
            child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'D5600 DX-Format V.02',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                   // Three-dot menu
                    Builder(
                      builder: (context) {
                        return IconButton(
                          icon: const Icon(Icons.more_vert),
                          onPressed: () {
                            showPopover(
                              context: context,
                              backgroundColor: Colors.white, // Ensure contrast with the arrow
                              bodyBuilder: (context) => widget,
                              direction: PopoverDirection.bottom, // Ensure correct arrow direction
                              width: 200, // Adjust to fit arrow properly
                              height: 120,
                              arrowHeight: 10, // Adjust arrow height
                              arrowWidth: 15,  // Adjust arrow width
                              arrowDxOffset: 20, // Offset to adjust arrow position horizontally
                              arrowDyOffset: 10, // Offset for vertical positioning of the arrow
                              contentDxOffset: -35,
                              contentDyOffset: -17, // Ensure the content appears below the button correctly
                            );



                          },
                        );
                      },
                    ),
                  ],
                ),

                Text(
                  'Digital SLR',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
                const SizedBox(height: 10),

                const Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      size: 16,
                      color: Colors.grey,
                    ),
                    SizedBox(width: 4),
                    Text(
                      '3605 Parker Rd.',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Row(
                      children: [
                        const Icon(
                          Icons.access_time,
                          size: 16,
                          color: Colors.grey,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          '27 Minutes Ago',
                          style: myStyleInterMedium(context: context,color: Colors.grey),
                        ),
                      ],
                    ),
                    const SizedBox(width: 8,),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Text(
                        '\$55,04.95',
                        style:myStyleInterLarge(context: context,color: AppColors.appPrimaryColor),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),


        ],
      ),
    );
  }
}



class ListItems extends StatelessWidget {
  final IconData iconData;
  final String titleText;
  final VoidCallback onTap;
  const ListItems({
    super.key,required this.iconData,required this.titleText,required this.onTap});


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min, // Adjust to make it smaller
      children: [

        ListTile(
          leading: Icon(iconData, color: AppColors.appGreyColor),
          title:  Text(titleText),
          onTap: onTap
        ),

      ],
    );
  }
}

