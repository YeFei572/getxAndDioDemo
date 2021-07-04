import 'package:demo01/pages/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:demo01/pages/components/loading_overlay.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
      ),
      body: Container(
        child: GetBuilder<HomeController>(
          builder: (controller) {
            return LoadingOverlay(
                isLoading: controller.isLoading,
                child: Text(controller.report.wallet));
          },
        ),
      ),
    );
  }
}
