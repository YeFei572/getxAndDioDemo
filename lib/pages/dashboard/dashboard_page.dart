import 'package:demo01/pages/account/account_page.dart';
import 'package:demo01/pages/alerts/alerts_page.dart';
import 'package:demo01/pages/home/home_page.dart';
import 'package:demo01/pages/posts/posts_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'dashboard_controller.dart';

class DashboardPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return GetBuilder<DashboardController>(builder: (controller) {
      return Scaffold(
        body: SafeArea(
          child: IndexedStack(
            index: controller.tabIndex,
            children: [
              HomePage(),
              PostsPage(),
              AlertsPage(),
              AccountPage(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          fixedColor: theme.primaryColor,
          onTap: controller.changeTabIndex,
          currentIndex: controller.tabIndex,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "主页1",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_post_office),
              label: "帖子",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_alert),
              label: "警告",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "我的",
            ),
          ],
        ),
      );
    });
  }
}
