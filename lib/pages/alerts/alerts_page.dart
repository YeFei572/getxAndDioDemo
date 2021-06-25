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
        appBar: AppBar(
          title: _buildSearchInput(),
          actions: _buildActions(),
        ),
        body: Center(
          // child: Container(
          //   width: 700.w,
          //   height: 500.w,
          //   child: ClipRRect(
          //     child: Image.network("https://files.catbox.moe/ybddsq.jpg",fit: BoxFit.fitWidth,),
          //     borderRadius: BorderRadius.circular(60.w),
          //   ),
          // ),
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
        ),
      )
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
          style: TextStyle(color: Colors.black54),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0),
            hintText: "请输入关键词",
            fillColor: Color(0xffF4F6F8),
            filled: true,
            hintStyle: TextStyle(fontSize: 24.sp, color: Colors.black45),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.w),
              borderSide: BorderSide(color: Get.theme.primaryColor),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.w),
              borderSide: BorderSide(color: Get.theme.primaryColor),
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
