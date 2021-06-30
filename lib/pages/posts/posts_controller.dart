import 'package:demo01/pages/posts/posts_service.dart';
import 'package:demo01/utils/get_store_util.dart';
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

  void test() {
    PostsService().test();
  }

  Future removeStorage() async {
    StoreUtils.store.remove("user");
    Get.snackbar("title", "移除成功！");
  }
}
