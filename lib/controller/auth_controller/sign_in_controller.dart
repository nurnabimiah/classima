

import 'package:get/get.dart';

class SignInController extends GetxController {
  RxBool obscureText = true.obs;

  void togglePasswordVisibility() {
    obscureText.value = !obscureText.value;
    print(">>>>>>>>>>>>>>>>>>>>>>>>>>>>Password visibility toggled. Now obscureText is: ${obscureText.value}");
  }

}
