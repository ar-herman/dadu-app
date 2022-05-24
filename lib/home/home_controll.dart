import 'dart:math';

import 'package:get/get.dart';

class Homecontroll extends GetxController {
  var leftDiceNumber = 1.obs;
  var rightDiceNumber = 1.obs;

  void changeDiceFace() {
    leftDiceNumber.value = Random().nextInt(6) + 1;
    rightDiceNumber.value = Random().nextInt(6) + 1;
  }
}
