

import 'package:classimia/controller/ads_details_controller/ads_details_controller.dart';
import 'package:classimia/utils/app_colors.dart';
import 'package:classimia/utils/style/app_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

// class AdsProductHeaderWidget extends StatelessWidget {
//   const AdsProductHeaderWidget({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // Price Row
//           Row(
//             children: [
//               const Text(
//                 '\$58,785',
//                 style: TextStyle(
//                   color: Colors.red,
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               const SizedBox(width: 8),
//               Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(5),
//                   color: Colors.grey[200],
//                 ),
//                 padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
//                 child: const Text(
//                   'Negotiable',
//                   style: TextStyle(
//                     fontSize: 12,
//                     color: Colors.grey,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           const SizedBox(height: 5),
//
//           // Realty Company Name
//            Text(
//             'Dream Homes Realty',
//             style: myStyleInterExtraLarge(context: context,color: AppColors.appBlackColor),
//           ),
//           const SizedBox(height: 4),
//
//           // Posted Date and Location
//           const Row(
//             children: [
//               Text(
//                 'Posted on 18th Aug, 12:25 pm',
//                 style: TextStyle(fontSize: 12, color: Colors.grey),
//               ),
//               Spacer(),
//               Icon(Icons.location_on, size: 14, color: Colors.grey),
//               Text(
//                 'Mohammadpur, Dhaka',
//                 style: TextStyle(fontSize: 12, color: Colors.grey),
//               ),
//             ],
//           ),
//           const SizedBox(height: 16),
//
//           // Chat and Call Buttons
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               // Chat Now Button
//               Expanded(
//                 child: OutlinedButton.icon(
//                   icon: const Icon(Icons.chat_bubble_outline, color: Colors.black),
//                   label: const Text('Chat Now', style: TextStyle(color: Colors.black)),
//                   style: OutlinedButton.styleFrom(
//                     padding: const EdgeInsets.symmetric(vertical: 12),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                     side: BorderSide(color: Colors.grey[300]!),
//                   ),
//                   onPressed: () {
//                     // Handle Chat action
//                   },
//                 ),
//               ),
//               const SizedBox(width: 16),
//               // Call Now Button
//               Expanded(
//                 child: ElevatedButton.icon(
//                   icon: const Icon(Icons.call, color: Colors.white),
//                   label:  Text('Call Now',style:myStyleInterMedium(context: context),),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.pinkAccent,
//                     padding: const EdgeInsets.symmetric(vertical: 12),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                   ),
//                   onPressed: () {
//                     // Handle Call action
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

class AdsProductHeaderWidget extends StatelessWidget {
  final bool isChatInitiallySelected;

  const AdsProductHeaderWidget({super.key, this.isChatInitiallySelected = true});

  @override
  Widget build(BuildContext context) {
    // Initialize the controller and set the initial state
    final AdsDetailsController controller = Get.find<AdsDetailsController>();

    // Set the initial state based on the boolean passed
    if (isChatInitiallySelected) {
      controller.selectChat();
    } else {
      controller.selectCall();
    }

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Price Row
          Row(
            children: [
              const Text(
                '\$58,785',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 8),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey[200],
                ),
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: const Text(
                  'Negotiable',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),

          // Realty Company Name
          Text(
            'Dream Homes Realty',
            style: myStyleInterExtraLarge(context: context, color: AppColors.appBlackColor),
          ),
          const SizedBox(height: 4),

          // Posted Date and Location
          const Row(
            children: [
              Text(
                'Posted on 18th Aug, 12:25 pm',
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
              Spacer(),
              Icon(Icons.location_on, size: 14, color: Colors.grey),
              Text(
                'Mohammadpur, Dhaka',
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ],
          ),
          const SizedBox(height: 16),

          // Chat and Call Buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Chat Now Button
              Expanded(
                child: Obx(() => OutlinedButton.icon(
                  icon: Icon(
                    Icons.chat_bubble_outline,
                    color:  controller.isChatSelected.value? AppColors.appWhiteColor: AppColors.appBlackColor,
                  ),
                  label: Text(
                    'Chat Now',
                    style: myStyleInterMedium(context: context, color: controller.isChatSelected.value? AppColors.appWhiteColor: AppColors.appBlackColor),
                  ),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: controller.isChatSelected.value? Colors.pink : Colors.transparent,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    side: BorderSide(color: Colors.grey[300]!),
                  ),
                  onPressed: () {
                    // Toggle Chat button selection
                    controller.selectChat();
                  },
                )),
              ),
              const SizedBox(width: 16),
              // Call Now Button
              Expanded(
                child: Obx(() => OutlinedButton.icon(
                  icon:Icon(
                    Icons.call,
                    color:  controller.isCallSelected.value? AppColors.appWhiteColor: AppColors.appBlackColor,
                  ),
                  label: Text(
                    'Call Now',
                    style: myStyleInterMedium(context: context, color: controller.isCallSelected.value? AppColors.appWhiteColor: AppColors.appBlackColor),
                  ),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: controller.isCallSelected.value? Colors.pink : Colors.transparent,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    side: BorderSide(color: Colors.grey[300]!),
                  ),
                  onPressed: () {
                    // Toggle Call button selection
                    controller.selectCall();
                  },
                )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
