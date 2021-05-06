import 'package:demo01/pages/components/loading_overlay.dart';
import 'package:demo01/pages/home/home_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
        child: LoadingOverlay(
          isLoading: controller.isLoading,
          child: ListView.separated(
            itemBuilder: (context, int index) {
              String title;
              if (controller.currentIndex == 0) {
                title = controller.fishList[index].title!;
              } else {
                title = controller.feedList[index].title!;
              }
              return Container(
                child: Column(
                  children: [
                    // Image.network(url),
                    Text(title),
                  ],
                ),
              );
            },
            separatorBuilder: (context, int index) {
              return Divider();
            },
            itemCount: controller.currentIndex == 0
                ? controller.fishList.length
                : controller.feedList.length,
          ),
        ),
      ),
    );
  }
}
