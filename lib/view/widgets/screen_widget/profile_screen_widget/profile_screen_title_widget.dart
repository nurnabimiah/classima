
import 'package:classimia/utils/app_colors.dart';
import 'package:classimia/utils/style/app_style.dart';
import 'package:flutter/material.dart';

class ProfileScreenTitleWidget extends StatelessWidget {
  const ProfileScreenTitleWidget({super.key, required this.title, required this.onTap});

  final String title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.appPinkShadeColor,
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0), // Add padding for better spacing
      child: GestureDetector(
        onTap: onTap, // Wrap the row in a GestureDetector to handle taps
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: myStyleInterLarge(context: context, color: AppColors.appBlackColor),
            ),
            const Icon(
              Icons.arrow_forward_ios, // Use an arrow icon
              color: AppColors.appBlackColor,
              size: 18,
            ),
          ],
        ),
      ),
    );
  }
}

