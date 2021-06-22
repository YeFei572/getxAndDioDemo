import 'package:demo01/pages/account/account_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountPage extends GetView<AccountController> {
  Widget build(BuildContext context) {
    return GetBuilder<AccountController>(
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            title: Text('我的'),
            leading: IconButton(
              icon: Icon(CupertinoIcons.switch_camera_solid),
              /*onPressed: () {
                Get.theme.primaryColor == Colors.pinkAccent
                    ? Get.changeTheme(AppTheme.dark)
                    : Get.changeTheme(AppTheme.light);
              },*/
              onPressed: controller.changeThemeMode,
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("两个文件需要试用一下， 一是ttf文件，在第2步中直接引入即可。另外一个css文件转化成dart文件，用一个网站转就可以了 https://xwrite.gitee.io/blog/"),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                        colors: [Colors.blueAccent, Colors.pinkAccent]),
                  ),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.transparent),
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      minimumSize: MaterialStateProperty.all(Size(0, 0)),
                      padding: MaterialStateProperty.all(EdgeInsets.all(5)),
                    ),
                    child: Text('测试发送'),
                    onPressed: controller.sendTestMsg,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
