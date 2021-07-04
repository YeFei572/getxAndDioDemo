import 'package:demo01/constants.dart';
import 'package:demo01/models/DemoFiles.dart';
import 'package:demo01/pages/components/loading_overlay.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'hashrate_info_controller.dart';

class HashRateInfoCard extends GetView<HashRateInfoController> {
  final CloudStorageInfo demoFile;

  const HashRateInfoCard({
    Key key,
    @required this.demoFile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(defaultPadding),
        decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.circular(defaultBorderRadius),
        ),
        child: GetBuilder<HashRateInfoController>(
          builder: (controller) {
            return LoadingOverlay(
                isLoading: controller.isLoading,
                child: Container(child: Text(controller.report.wallet)));
          },
        ),
      ),
    );
  }
}
