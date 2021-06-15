import 'package:demo01/pages/alerts/second/second_controller.dart';
import 'package:get/get.dart';

class SecondBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SecondController>(() => SecondController());
  }

}