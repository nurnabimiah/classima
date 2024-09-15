
import 'package:classimia/utils/app_colors.dart';
import 'package:classimia/utils/images/app_images.dart';
import 'package:classimia/utils/style/app_style.dart';
import 'package:classimia/view/features/bottom_nav_screen/add_screen.dart';
import 'package:classimia/view/features/bottom_nav_screen/chat_screen.dart';
import 'package:classimia/view/features/bottom_nav_screen/home_screen.dart';
import 'package:classimia/view/features/bottom_nav_screen/profile_screen.dart';
import 'package:classimia/view/features/bottom_nav_screen/search_screen.dart';
import 'package:classimia/view/features/landing_screen/landing_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavigationBarController extends GetxController implements GetxService{
  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;

  setSelectedIndex({dynamic selectedIndex}){
    _selectedIndex = selectedIndex;
    update();
  }

  void updateSelectedIndex(){
    _selectedIndex = 0;
    update();
  }


  Widget bottomNavigationBar(BuildContext context, bool isLanding, bool isSelectedColor, {dynamic selectedIndex}) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppColors.appWhiteColor,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      unselectedLabelStyle: myStyleInterMedium(context: context),
      selectedLabelStyle:myStyleInterMedium(context: context),
      selectedItemColor: isSelectedColor == true ?
      AppColors.appPrimaryColor : AppColors.appBrightBlackColor,
      unselectedItemColor: AppColors.appBlackColor,
      items:  <BottomNavigationBarItem>[


        const BottomNavigationBarItem(
          icon: ImageIcon( AssetImage(AppImages.homeIcon),
            color: AppColors.appBlackColor,
            size: 20,
          ),
          activeIcon: ImageIcon(
            AssetImage(AppImages.homeIcon),
            color: AppColors.appPrimaryColor,
            size: 20,
          ),
          label: 'Home',
        ),


        const BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage(AppImages.searchIcon),
            color: AppColors.appBlackColor,
            size: 20,
          ),
          activeIcon: ImageIcon(
            AssetImage(AppImages.searchIcon),
            color: AppColors.appPrimaryColor,
            size: 20,
          ),
          label: 'Search',
        ),


        BottomNavigationBarItem(
          icon: Container(
              decoration: const BoxDecoration(
                color: AppColors.appBlackColor,
                borderRadius: BorderRadius.all(Radius.circular(6)),
              ),
              height: 25,
              width: 25,
              child: const Center(child: Icon(Icons.add,color: AppColors.appWhiteColor,size: 16,))),

          activeIcon: Container(
              height: 25,
              width: 25,
              decoration: const BoxDecoration(
                color: AppColors.appPrimaryColor,
                borderRadius: BorderRadius.all(Radius.circular(6)),
              ),

              child: const Center(child: Icon(Icons.add,color: AppColors.appWhiteColor,size: 16,))),
          label: 'Add',
        ),

        const BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage(AppImages.chatIcon),
            color: AppColors.appBlackColor,
            size: 20,
          ),
          activeIcon: ImageIcon(
            AssetImage(AppImages.chatIcon),
            color: AppColors.appPrimaryColor,
            size: 20,
          ),
          label: 'Chat',
        ),

        const BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage(AppImages.profileIcon),
            color: AppColors.appBlackColor,
            size: 20,
          ),
          activeIcon: ImageIcon(
            AssetImage(AppImages.profileIcon),
            color: AppColors.appPrimaryColor,
            size: 20,
          ),
          label: 'Profile',
        ),
      ],
      currentIndex: selectedIndex ?? _selectedIndex,
      onTap:(index){
        onItemTapped(index, context, isLanding);
      },
    );
  }

  onItemTapped(int index, BuildContext context, bool isLanding) {
    _selectedIndex = index;
    if(!isLanding){
      Get.offNamedUntil(LandingScreen.routeName, (route) => false);
    }
    update();
  }

  Widget? getWidget({int? index, required BuildContext context}) {
    if (index == 0 ) {
      return const HomeScreen();
    }
    if (index == 1 ) {
      return const SearchScreen();
    }
    if (index == 2 ) {
      return const AddScreen();
    }
    if (index == 3) {
      return const MessageScreen();
    }

    if (index == 4) {
      return const ProfileScreen();
    }

    update();
    return null;
  }

}

