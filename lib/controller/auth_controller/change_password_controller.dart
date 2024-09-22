

import 'package:get/get.dart';

class ChangePasswordController extends GetxController{

  var isObscure = true.obs;

  // Method to toggle the obscure state
  void toggleObscure() {
    isObscure.value = !isObscure.value;
  }


}