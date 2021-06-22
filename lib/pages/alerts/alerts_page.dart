import 'package:demo01/pages/alerts/alerts_controller.dart';
import 'package:demo01/routes/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AlertsPage extends GetView<AlertsController> {
  Widget build(BuildContext context) {
    return GetBuilder<AlertsController>(
      builder: (controller) => Scaffold(
        body: Stack(
          children: <Widget>[
            MediaQuery.removePadding(
              removeTop: true,
              context: context,
              child: ListView.separated(
                controller: controller.scrollController,
                itemCount: 200,
                itemBuilder: (ctx, int index) {
                  if (index == 0) {
                    return Container(
                      height: 300.w,
                      color: Colors.yellowAccent.withOpacity(0.3),
                    );
                  }
                  return Container(
                    height: 100.w,
                    color: Colors.pinkAccent.withOpacity(0.3),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 20.w,
                    color: Colors.white,
                  );
                },
              ),
            ),
            Obx(()=>Opacity(
              opacity: controller.toolbarOpacity.value,
              child: Container(
                height: 98.w,
                color: Colors.blue,
                child: Padding(
                  padding: EdgeInsets.only(top: 30.w),
                  child: Center(
                    child: Text(
                      "scroll demo",
                      style: TextStyle(color: Colors.black, fontSize: 32.sp),
                    ),
                  ),
                ),
              ),
            ),)
          ],
        ),
        floatingActionButton: !controller.showToTopBtn
            ? null
            : FloatingActionButton(
                child: Icon(
                  Icons.keyboard_arrow_up,
                  color: Colors.blue,
                ),
                onPressed: () {
                  controller.scrollController.animateTo(0.0,
                      duration: Duration(milliseconds: 500),
                      curve: Curves.ease);
                },
              ),
      ),
    );
  }

  List<Widget> _buildActions() {
    return [
      TextButton.icon(
          onPressed: () {
            Get.toNamed(AppRoutes.SECOND_PAGE);
          },
          icon: Icon(
            Icons.next_plan_outlined,
            color: Colors.white,
          ),
          label: Text(
            "视频demo",
            style: TextStyle(color: Colors.white),
          ))
    ];
  }

  Widget _buildSearchInput() {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: 55.w,
        maxHeight: 55.w,
        minWidth: 500.w,
        maxWidth: 500.w,
      ),
      child: Form(
        child: TextFormField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0),
            hintText: "请输入关键词",
            fillColor: Color(0xffF4F6F8),
            filled: true,
            hintStyle: TextStyle(fontSize: 24.sp, color: Colors.black54),
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
    );
  }
}
