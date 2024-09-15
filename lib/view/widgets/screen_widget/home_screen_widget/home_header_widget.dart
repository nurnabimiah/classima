
import 'package:classimia/utils/app_colors.dart';
import 'package:classimia/utils/style/app_style.dart';
import 'package:flutter/material.dart';

class HomeHeaderWidget extends StatelessWidget {
  final String imagePath;
  final String text;
  final VoidCallback onTap;

  const HomeHeaderWidget({
    super.key,
    required this.imagePath,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: GestureDetector(
        onTap: onTap, // Trigger the callback when tapped
        child: Row(
          children: [
            Image.asset(
              imagePath,
              height: 20,
              width: 20,
            ),
            const SizedBox(width: 5),
            Text(text, style: myStyleInterMedium(context: context, color: AppColors.appBlackColor,),
            ),
          ],
        ),
      ),
    );
  }
}
