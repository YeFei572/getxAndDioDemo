import 'dart:convert';

import 'package:get/get.dart';
import 'package:xiao_mi_push_plugin/xiao_mi_push_plugin.dart';

class DashboardController extends GetxController {
  var tabIndex = 0;
  Map<String, Function> methods = {};

  void changeTabIndex(int index) {
    tabIndex = index;
    update();
  }

  @override
  void onInit() {
    super.onInit();
    this.initXiaomiConfig();
  }

  initXiaomiConfig() {
    XiaoMiPushPlugin.init(
        appId: "2882303761519903953", appKey: "5681990371953");
    XiaoMiPushPlugin.setAlias(alias: "test", category: "test");
    XiaoMiPushPlugin.setUserAccount(userAccount: "test", category: "test");
    XiaoMiPushPlugin.subscribe(topic: "test", category: "test");
    XiaoMiPushPlugin.addListener(onXiaoMiPushListener);
  }

  /// 小米推送监听器
  onXiaoMiPushListener(type, params) {
    print("Listen: ${type.toString()}-----------------${jsonEncode(params)}");
  }

  @override
  void dispose() {
    XiaoMiPushPlugin.removeListener(onXiaoMiPushListener);
    super.dispose();
  }
}
