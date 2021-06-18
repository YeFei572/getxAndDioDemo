import 'package:demo01/pages/alerts/alerts_controller.dart';
import 'package:demo01/pages/components/loading_overlay.dart';
import 'package:demo01/routes/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AlertsPage extends GetView<AlertsController> {
  Widget build(BuildContext context) {
    ThemeData currTheme = Theme.of(context);
    return GetBuilder<AlertsController>(
      builder: (controller) => Scaffold(
        appBar: AppBar(
          title: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: 55.w,
              maxHeight: 55.w,
              minWidth: 700.w,
              maxWidth: 700.w,
            ),
            child: Form(
              child: TextFormField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 0),
                  hintText: "请输入关键词",
                  fillColor: Color(0xffF4F6F8),
                  filled: true,
                  hintStyle: TextStyle(fontSize: 24.sp,color: Colors.black54),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.w),
                    borderSide: BorderSide(color: Colors.pinkAccent),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.w),
                    borderSide: BorderSide(color: Colors.pinkAccent),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.w),
                    borderSide: BorderSide(color: Colors.grey.withOpacity(0.6)),
                  ),
                  prefixIcon: Container(
                    child: Icon(
                      CupertinoIcons.search,
                      color: Colors.grey.withOpacity(0.5),
                    ),
                  ),
                  suffixIcon: GestureDetector(
                    onTap: () {},
                    child: Icon(
                      CupertinoIcons.clear,
                      color: Colors.grey.withOpacity(0.5),
                    ),
                  ),
                ),
                onSaved: (value) {
                  controller.keyWord = value!;
                },
              ),
            ),
          ),
        ),
        body: GetBuilder<AlertsController>(
          builder: (controller) {
            return LoadingOverlay(
              isLoading: controller.loadingFlag,
              child: Column(
                children: [
                  IconButton(
                      onPressed: () {
                        Get.toNamed(AppRoutes.SECOND_PAGE);
                      },
                      icon: Icon(
                        Icons.next_plan_outlined,
                        color: Colors.pinkAccent,
                      ))
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
