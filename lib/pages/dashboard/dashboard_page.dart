import 'package:demo01/pages/account/account_page.dart';
import 'package:demo01/pages/alerts/alerts_page.dart';
import 'package:demo01/pages/components/iconfont.dart';
import 'package:demo01/pages/home/home_page.dart';
import 'package:demo01/pages/posts/posts_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'dashboard_controller.dart';

class DashboardPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(builder: (controller) {
      return Scaffold(
        body: IndexedStack(
          index: controller.tabIndex,
          children: [
            HomePage(),
            PostsPage(),
            AlertsPage(),
            AccountPage(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: controller.changeTabIndex,
          currentIndex: controller.tabIndex,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(IconFont.icon_home),
              label: "主页",
            ),
            BottomNavigationBarItem(
              icon: Icon(IconFont.icon_favor),
              label: "帖子",
            ),
            BottomNavigationBarItem(
              icon: Icon(IconFont.icon_community),
              label: "消息",
            ),
            BottomNavigationBarItem(
              icon: Icon(IconFont.icon_people),
              label: "我的",
            ),
          ],
        ),
      );
    });
  }
}
