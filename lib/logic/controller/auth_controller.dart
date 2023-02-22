import 'package:get/get.dart';

class AuthCotroller extends GetxController {
  bool isVisability = false;
  bool isCheckBox = false;

  void visability() {
    isVisability = !isVisability;
    update();
  }

  void chackBox() {
    isCheckBox = !isCheckBox;
    update();
  }

  // GetBuilder ==> use update() and use with simple interfaces.

  // Obx ==> not use update() and use with api.
}
