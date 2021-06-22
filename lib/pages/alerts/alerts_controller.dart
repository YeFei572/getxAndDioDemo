import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AlertsController extends GetxController {
  bool loadingFlag = false;

  String keyWord = "";

  final int DEFAULT_SCROLLER = 300;
  final int DEFAULT_SHOW_TOP_BTN = 1000;
  ScrollController scrollController = ScrollController();
  RxDouble toolbarOpacity = 0.0.obs;
  bool showToTopBtn = false;

  @override
  void onInit() {
    super.onInit();
    print("start ....");
    if (scrollController.hasClients) {
      scrollController.addListener(() {
        print("-------------${scrollController.offset}");
        double t = scrollController.offset / DEFAULT_SCROLLER;
        if (t < 0.0) {
          t = 0.0;
        } else if (t > 1.0) {
          t = 1.0;
        }
        toolbarOpacity.value = t;

        if(scrollController.offset < DEFAULT_SHOW_TOP_BTN && showToTopBtn){
          showToTopBtn = false;
        }else if(scrollController.offset >= DEFAULT_SHOW_TOP_BTN && !showToTopBtn){
          showToTopBtn = true;
        }
      });
     print(scrollController.offset);
    }

  }
}
