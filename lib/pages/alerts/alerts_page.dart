import 'package:better_player/better_player.dart';
import 'package:demo01/pages/alerts/alerts_controller.dart';
import 'package:demo01/pages/components/loading_overlay.dart';
import 'package:demo01/routes/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class AlertsPage extends GetView<AlertsController> {
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        body: GetBuilder<AlertsController>(
          builder: (controller) {
            return LoadingOverlay(
              isLoading: controller.loadingFlag,
              child: Column(
                children: [
                  IconButton(
                      onPressed: () {
                        Get.toNamed(AppRoutes.SECOND_PAGE);
                      }, icon: Icon(Icons.next_plan_outlined))
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
