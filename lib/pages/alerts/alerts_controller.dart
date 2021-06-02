import 'dart:developer';
import 'dart:io';

import 'package:demo01/protobuf/handler/length_field_prepender.dart';

// ignore: import_of_legacy_library_into_null_safe
import 'package:demo01/protobuf/request/DIMReqProtocol.pb.dart';
import 'package:fixnum/fixnum.dart';
import 'package:get/get.dart';

class AlertsController extends GetxController {
  bool loadingFlag = false;

  @override
  void onInit() {
    super.onInit();

    /// 处理Socket连接
    // this.initSocketConnection();
  }

  initSocketConnection() async {
    log("开始连接socket");

    /// 初始化Socket连接
    await Socket.connect("172.16.0.193", 11211).then((socket) {
      DIMReqProtocol temp = DIMReqProtocol();
      temp.fromId = "10001";
      temp.type = 1;
      temp.timestamp = Int64(DateTime.now().millisecondsSinceEpoch);
      LengthFieldPrepender encode = LengthFieldPrepender(1);
      socket.add(encode.encode(temp));

      socket.listen((data) {
        print("------$data-------");
      });
    });
  }
}
