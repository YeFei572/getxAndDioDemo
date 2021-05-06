import 'package:demo01/pages/components/loading_overlay.dart';
import 'package:demo01/pages/home/home_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) => DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: TabBar(
              onTap: controller.changeType,
              indicatorColor: Colors.blueAccent,
              labelColor: Colors.black,
              tabs: [
                Tab(
                  text: "Fish",
                ),
                Tab(
                  text: "Feed",
                ),
              ],
            ),
          ),
          body: Container(
            child: TabBarView(
              children: [
                buildItemPage(controller, context),
                buildItemPage(controller, context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildItemPage(HomeController controller, BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) => Padding(
        padding: EdgeInsets.all(ScreenUtil().setWidth(30)),
        child: EasyRefresh(
          controller: controller.refreshController,
          onRefresh: () async {
            controller.page = 1;
            controller.currentIndex == 0
                ? controller.getFishList()
                : controller.getFeedList();
            controller.currentIndex == 0
                ? controller.fishList.clear()
                : controller.feedList.clear();
          },
          onLoad: () async {
            controller.page++;
            controller.currentIndex == 0
                ? controller.getFishList()
                : controller.getFeedList();
          },
          child: LoadingOverlay(
            isLoading: controller.isLoading,
            child: SingleChildScrollView(
              child: Column(
                children: List.generate(
                  controller.currentIndex == 0
                      ? controller.fishList.length
                      : controller.feedList.length,
                  (index) => Container(
                    child: Column(
                      children: [
                        Text(controller.currentIndex == 0
                            ? controller.fishList[index].title!
                            : controller.feedList[index].title!),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
