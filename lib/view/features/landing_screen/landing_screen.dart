import 'package:classimia/controller/landing_screen_controller/landing_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class LandingScreen extends StatelessWidget {
  static const String routeName = '/landing';
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetBuilder<BottomNavigationBarController>(
      builder: (bottomNavigationBarController){
        return Scaffold(
          body: bottomNavigationBarController.getWidget(index: bottomNavigationBarController.selectedIndex, context: context),
          bottomNavigationBar: bottomNavigationBarController.bottomNavigationBar(context, true, true),
        );
      },
    );
  }
}
