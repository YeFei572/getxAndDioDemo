import 'package:demo01/pages/posts/posts_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PostsPage extends GetView<PostsController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PostsController>(builder: (controller) {
      return Scaffold(
        body: Stack(
          children: <Widget>[
            MediaQuery.removePadding(
              removeTop: true,
              context: context,
              child: NotificationListener(
                onNotification: (notification) {
                  if (notification is ScrollUpdateNotification &&
                      notification.depth == 0) {
                    double t = notification.metrics.pixels /
                        controller.DEFAULT_SCROLLER;
                    if (t < 0.0) {
                      t = 0.0;
                    } else if (t > 1.0) {
                      t = 1.0;
                    }
                    if (t == 1.0) {

                    }
                    print(t);
                    controller.toolbarOpacity.value = t;
                  }
                  return true;
                },
                child: ListView.separated(
                  itemCount: 1000,
                  itemBuilder: (context, index) {
                    return Container(
                      child: ListTile(
                        title: Text(
                          "这是标题" + index.toString(),
                          style: TextStyle(color:  Get.theme.textTheme.bodyText2!.color),
                        ),
                        subtitle: Text(
                          "这是副标题" + index.toString(),
                          style: TextStyle(color:  Get.theme.textTheme.bodyText2!.color),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider();
                  },
                ),
              ),
            ),
            Obx(
              () => Opacity(
                // key: controller.opacityKey,
                opacity: controller.toolbarOpacity.value,
                child: Container(
                  color:  Get.theme.primaryColor,
                  height: 100.w,
                  child: Padding(
                    padding: EdgeInsets.only(top: 30.0.w),
                    child: Center(
                      child: Text(
                        "NotificationListenerDemo",
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
