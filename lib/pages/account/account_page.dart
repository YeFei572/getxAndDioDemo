import 'package:demo01/pages/account/account_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountPage extends GetView<AccountController> {
  Widget build(BuildContext context) {
    return GetBuilder<AccountController>(
      builder: (controller) {
        return Scaffold(
          body: Center(
            child: ElevatedButton(
              child: Text('测试发送'),
              onPressed: controller.sendTestMsg
            ),
          ),
        );
      },
    );
  }
}
