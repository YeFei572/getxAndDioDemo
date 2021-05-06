import 'package:demo01/models/feed.dart';
import 'package:demo01/models/fish.dart';
import 'package:demo01/pages/home/feed_service.dart';
import 'package:demo01/pages/home/fish_service.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var currentIndex = 0;

  List<Feed> feedList = [];
  List<Fish> fishList = [];
  bool isLoading = true;
  int page = 1;
  EasyRefreshController? easyRefreshController;

  @override
  void onInit() {
    super.onInit();
    this.getFishList();
  }

  void changeType(int index) {
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
  }

  void getFeedList() {
    FeedService.getFeedList().then((value) => {
          this.feedList.addAll(value),
          this.isLoading = false,
          update(),
        });
  }

  void getFishList() {
    FishService.getFishList().then((value) => {
          this.fishList.addAll(value),
          this.isLoading = false,
          update(),
        });
  }
}
