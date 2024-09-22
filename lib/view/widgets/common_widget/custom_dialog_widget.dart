


import 'package:classimia/utils/app_colors.dart';
import 'package:classimia/utils/style/app_style.dart';
import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  final VoidCallback onCancel;
  final VoidCallback onRemove;

  const CustomDialog({
    Key? key,
    required this.onCancel,
    required this.onRemove,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      title: Text(
        'Do you want to remove this ad\nfrom your favorites?',
        style: myStyleInterLarge(context: context, color: AppColors.appBlackColor),
      ),
      actions: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, // Add space between buttons
          children: [
            Expanded(
              child: TextButton(
                onPressed: onCancel,
                style: TextButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: AppColors.appBlackColor, // Button background
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Cancel',
                  style: myStyleInterMedium(context: context),
                ),
              ),
            ),
            const SizedBox(width: 16), // Space between the buttons
            Expanded(
              child: TextButton(
                onPressed: onRemove,
                style: TextButton.styleFrom(
                  foregroundColor: AppColors.appBrightBlackColor,
                  backgroundColor: AppColors.appPrimaryColor, // Button background
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Remove',
                  style: myStyleInterMedium(context: context, color: AppColors.appWhiteColor),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

