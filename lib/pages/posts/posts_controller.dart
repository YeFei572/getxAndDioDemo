import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PostsController extends GetxController {
  bool isLoading = false;
  Key opacityKey = Key("opacityKey");
  final int DEFAULT_SCROLLER = 300;
  RxDouble toolbarOpacity = 0.0.obs;

  @override
  void onInit() {
    super.onInit();
  }
}
