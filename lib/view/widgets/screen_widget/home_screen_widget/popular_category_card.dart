


import 'package:classimia/utils/app_colors.dart';
import 'package:classimia/utils/style/app_style.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final Category category;

  const CategoryCard({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(
          color: Colors.grey, // Border color
          width: 0.5, // Border width
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            category.icon,
            size: 40.0,
            color: Colors.red,
          ),
          const SizedBox(height: 10.0),
          Text(
            category.name,
            style: myStyleInterMedium(context: context,fontWeight: FontWeight.bold,color: AppColors.appBlackColor),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 5.0),
          Text(
            category.adsCount,
            style: const TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}


class Category {
  final String name;
  final String adsCount;
  final IconData icon;

  Category({required this.name, required this.adsCount, required this.icon});
}

final List<Category> categories = [
  Category(name: 'Vehicles', adsCount: '(8) Ads', icon: Icons.directions_car),
  Category(name: 'Properties', adsCount: '(8) Ads', icon: Icons.location_city),
  Category(name: 'Food & Agriculture', adsCount: '(8) Ads', icon: Icons.local_dining),
  Category(name: 'Home Appliances', adsCount: '(8) Ads', icon: Icons.kitchen),
  Category(name: 'Pet & Animal', adsCount: '(8) Ads', icon: Icons.pets),
  Category(name: 'Electronics', adsCount: '(8) Ads', icon: Icons.tv),
];