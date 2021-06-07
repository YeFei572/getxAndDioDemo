import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';

import 'package:demo01/pages/components/LengthFeildPrepender.dart';
import 'package:demo01/protobuf/DIMReqProtocol.pb.dart';
import 'package:fixnum/fixnum.dart';

class SocketClient {
  String? host;

  int? port;

  Socket? socket;

  /// 缓存的网络数据，暂未处理（通常这里有数据，说明当前接收的数据不是一个完整的消息，须要等待其它数据的到来拼凑成一个完整的消息）
  Int8List cacheData = Int8List(0);

  SocketClient({this.host, this.port});

  void init() async {
    try {
      socket = await Socket.connect(host, port!, timeout: Duration(seconds: 2));
    } catch (e) {
      print("链接socket出现异常，e=${e.toString()}");
    }
    sendMsg(_socketLogin("10000", "feige"));
    socket!.listen(decodeHandler,
        onError: errorHandler, onDone: doneHandler, cancelOnError: false);
  }

  _socketLogin(String userId, String userName) {
    DIMReqProtocol temp = DIMReqProtocol();
    temp.fromId = userId;
    temp.type = 1;
    temp.timestamp = Int64(0);
    return temp;
  }

  /// 发消息，指定消息号，pb对象能够为不传(例如发心跳包的时候)
  void sendMsg(DIMReqProtocol msg) {
    LengthFieldPrepender encode = LengthFieldPrepender(1);
    socket?.add(encode.encode(msg));
  }

  void decodeHandler(data) {
    log(data);
  }

  void errorHandler(error, StackTrace trace) {
    print("捕获socket异常信息：error=$error，trace=${trace.toString()}");
    socket!.close();
  }

  void doneHandler() {
    socket!.destroy();
    print("socket关闭处理");
  }
}
