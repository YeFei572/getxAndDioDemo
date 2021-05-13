import 'package:demo01/pages/components/keep_alive_wrapper.dart';
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
                Tab(text: "Fish"),
                Tab(text: "Feed"),
              ],
            ),
          ),
          body: Container(
            child: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              children: [
                KeepAliveWrapper(child: buildItemPage(controller, context)),
                KeepAliveWrapper(child: buildItemPage(controller, context)),
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
          header: ClassicalHeader(
            enableHapticFeedback: false,
            refreshReadyText: "刷新",
            refreshedText: "刷新完毕！",
            refreshFailedText: "刷新失败",
            refreshingText: "刷新中。。。。",
            infoText: "更新于%T",
            completeDuration: Duration(milliseconds: 100),
          ),
          onRefresh: controller.refreshPage,
          onLoad: controller.loadPage,
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
