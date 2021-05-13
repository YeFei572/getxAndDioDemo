import 'dart:developer';

import 'package:demo01/models/feed.dart';
import 'package:demo01/models/fish.dart';
import 'package:demo01/models/login_resp.dart';
import 'package:demo01/pages/home/feed_service.dart';
import 'package:demo01/pages/home/fish_service.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomeController extends GetxController {
  var currentIndex = 0;

  late GetStorage box;
  List<Feed> feedList = [];
  List<Fish> fishList = [];
  bool isLoading = true;
  int fishPage = 1;
  int feedPage = 1;
  EasyRefreshController? refreshController;

  @override
  void onInit() {
    box = GetStorage();
    super.onInit();
    refreshController = EasyRefreshController();
    this.getFishList();
    FeedService.login("15896272531", "111111").then((value) {
      box.remove("loginResp");
      box.write("loginResp", value);
      this.getFeedList({"Authorization": value.token ?? ''});
    });
  }

  @override
  void onClose() {
    super.onClose();
    refreshController?.dispose();
  }

  void changeType(int index) {
    this.currentIndex = index;
    update();
  }

  /* void changeType(int index) {
    this.page = 1;
    this.isLoading = true;
    update();
    this.currentIndex = index;
     if (index == 0) {
      this.fishList.clear();
      this.getFishList();
    } else {
      this.feedList.clear();
      this.getFeedList();
    }
  }*/

  void getFeedList(Map<String, Object> headers) {
    FeedService.getFeedList(this.feedPage, headers).then((value) => {
          this.feedList.addAll(value),
          this.isLoading = false,
          update(),
        });
  }

  void getFishList() {
    FishService.getFishList(this.fishPage).then((value) => {
          this.fishList.addAll(value),
          this.isLoading = false,
          update(),
        });
  }

  Future<void> refreshPage() async {
    log("刷新。。。。。");
    this.currentIndex == 0 ? this.fishPage = 1 : this.feedPage = 1;
    this.currentIndex == 0
        ? this.getFishList()
        : this.getFeedList(
            {'Authorization': (box.read("loginResp") as LoginResp).token ?? ""});
    this.currentIndex == 0 ? this.fishList.clear() : this.feedList.clear();
  }

  Future<void> loadPage() async {
    log("加载。。。。。${this.currentIndex}");
    this.currentIndex == 0 ? this.fishPage++ : this.feedPage++;
    this.currentIndex == 0
        ? this.getFishList()
        : this.getFeedList({
            'Authorization': (box.read("loginResp") as LoginResp).token ?? ""
          });
  }
}
