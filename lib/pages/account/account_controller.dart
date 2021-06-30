import 'dart:async';

import 'package:demo01/library/constant.dart';
import 'package:demo01/pages/account/socket_client.dart';
import 'package:demo01/protobuf/DIMReqProtocol.pb.dart';
import 'package:demo01/themes/app_theme.dart';
import 'package:demo01/utils/get_store_util.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

//地址
const String adress = '172.16.0.193';
//端口
const int port = 11211;

class AccountController extends GetxController {
  late SocketClient socketClient;

  @override
  void onInit() {
    super.onInit();
    // this.initSocket();
  }

  initSocket() async {
    socketClient = SocketClient(host: "172.16.0.193", port: 11211);
    socketClient.init();
  }

  sendTestMsg() {
    DIMReqProtocol protocol = new DIMReqProtocol();
    protocol.fromId = "10000";
    protocol.timestamp = Int64(0);
    protocol.type = 2;
    protocol.reqMsg = "缓存的网络数据，暂未处理（通常这里有数据，说明当前接收的数据不是一个完整的消息，须要等待其它数据的到来拼凑成一个完整的消息）";
    protocol.toId = "10000";
    print("<<<<<<<<<<<<<");

    /// 八进制的消息
    ///
    socketClient.sendMsg(protocol);
  }

  Future<void> changeThemeMode() async {
    if (StoreUtils.store.hasData(Constant.theme)) {
      ThemeData updatedTheme = StoreUtils.store.read(Constant.theme) == "light"
          ? AppTheme.dark
          : AppTheme.light;
      Get.changeTheme(updatedTheme);
      StoreUtils.store.write(
          Constant.theme, updatedTheme == AppTheme.light ? "light" : "dark");
      return;
    }
    if (Get.theme.primaryColor == Colors.pinkAccent) {
      Get.changeTheme(AppTheme.dark);
      StoreUtils.store.write(Constant.theme, "dark");
    } else {
      Get.changeTheme(AppTheme.light);
      StoreUtils.store.write(Constant.theme, "light");
    }
  }
}
