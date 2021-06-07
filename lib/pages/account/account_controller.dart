import 'package:demo01/pages/account/socket_client.dart';
import 'package:demo01/protobuf/DIMReqProtocol.pb.dart';
import 'package:fixnum/fixnum.dart';
import 'package:get/get.dart';
import 'dart:io';

//地址
const String adress = '172.16.0.193';
//端口
const int port = 11211;

class AccountController extends GetxController {
  late SocketClient socketClient;

  @override
  void onInit() {
    super.onInit();

    print("=================>>>>>>>>>>>>>>>>>>>");
    this.initSocket();
  }

  initSocket() async {
    socketClient = SocketClient(host: "172.16.0.193", port: 11211);
    socketClient.init();
  }

  sendTestMsg() {
    DIMReqProtocol protocol = new DIMReqProtocol();
    protocol.fromId = "10000";
    protocol.timestamp= Int64(0);
    protocol.type = 2;
    protocol.reqMsg = "这是消息内容";
    protocol.toId = "10000";
    print("<<<<<<<<<<<<<");
    /// 八进制的消息
    ///
    socketClient.sendMsg(protocol);
  }
}
