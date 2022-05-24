import 'package:dadu_app/home/home_controll.dart';
import 'package:get/get.dart';

class Homebinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Homecontroll());
  }
}
