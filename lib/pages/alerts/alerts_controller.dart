import 'dart:async';

import 'package:demo01/routes/app_routes.dart';
import 'package:get/get.dart';

class AlertsController extends GetxController {
  bool loadingFlag = false;

  String keyWord = "";

  late Timer _timer;

  RxInt currentTime = 0.obs;

  @override
  void onInit() {
    super.onInit();

    _timer = Timer.periodic(Duration(milliseconds: 50), (timer) {
      currentTime.value += 50;
      if (currentTime.value >= 5000) {
        timer.cancel();
      }
    });
  }

  @override
  void onClose() {
    super.onClose();
    _timer.cancel();
  }

  void skip() {
    currentTime.value = 5000;
    Get.toNamed(AppRoutes.SECOND_PAGE);
  }
}
