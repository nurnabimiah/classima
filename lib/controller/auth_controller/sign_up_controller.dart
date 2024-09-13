


import 'package:get/get.dart';

class SignUpController extends GetxController {
  // Observable for checkbox state
  RxBool isAgreed = false.obs;

  // Method to toggle checkbox state
  void toggleCheckbox(bool? value) {
    if (value != null) {
      isAgreed.value = value;
    }
  }
}
