import 'package:better_player/better_player.dart';
import 'package:demo01/pages/alerts/second/second_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<SecondController>(builder: (controller) {
        return Container(
          child: Column(
            children: [
              GestureDetector(
                onHorizontalDragStart: controller.startHorizontal,
                child: AspectRatio(
                  aspectRatio: 16 / 9,
                  child: BetterPlayer(
                    controller: controller.betterPlayerController,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20.w),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "测试标题。。。。。。。。。。。。。。。",
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Get.snackbar("title", "按钮一");
                    },
                    child: Text("按钮一"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Get.snackbar("title", "按钮二");
                    },
                    child: Text("按钮二"),
                  ),
                ],
              )
            ],
          ),
        );
      }),
    );
  }
}
