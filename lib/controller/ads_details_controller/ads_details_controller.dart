


import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AdsDetailsController extends GetxController{

  // Page controller for PageView
  PageController pageController = PageController();

  // Boolean observables to track button selection state
  RxBool isChatSelected = false.obs;
  RxBool isCallSelected = false.obs;


  void selectChat(){
    isChatSelected.value = true;
    isCallSelected.value = false;
  }

  void selectCall(){
    isChatSelected.value = false;
    isCallSelected.value = true;
  }



  // observable for the selected index
  var selectedIndex = 0.obs;

  // Method to change the selected image
  void changeImage(int index){
    selectedIndex.value = index;
    pageController.jumpToPage(index);
  }

  // Method to handle page changes in PageView
   void onPageChanged(int index){
    selectedIndex.value = index;
   }



}