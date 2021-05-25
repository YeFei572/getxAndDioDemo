import 'package:demo01/pages/alerts/alerts_controller.dart';
import 'package:demo01/pages/components/loading_overlay.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AlertsPage extends GetView<AlertsController> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<AlertsController>(
        builder: (controller) {
          return LoadingOverlay(
            isLoading: controller.loadingFlag,
            child: Container(
              child: Column(
                children: [],
              ),
            ),
          );
        },
      ),
    );
  }
}
