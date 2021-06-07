import 'package:demo01/pages/alerts/alerts_controller.dart';
import 'package:demo01/pages/components/loading_overlay.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';

class AlertsPage extends GetView<AlertsController> {
  String _format = 'yyyy年-M月-d日';

  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<AlertsController>(
        builder: (controller) {
          return LoadingOverlay(
            isLoading: controller.loadingFlag,
            child: Container(
              child: Column(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        showCupertinoModalPopup(
                            context: context,
                            builder: (context) {
                              return Container(
                                color: Colors.white,
                                height: 270,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(
                                            "开始时间",
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.black,
                                                decoration:
                                                    TextDecoration.none),
                                          ),
                                          Container(
                                            height: 14,
                                            color: Colors.grey,
                                            width: 2,
                                          ),
                                          Text(
                                            "结束时间",
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.black,
                                                decoration:
                                                    TextDecoration.none),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 230,
                                      width: double.infinity,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                         /* Container(
                                            width: 230,
                                            child: DateTimePickerWidget(
                                              dateFormat: _format,
                                              locale:
                                                  DateTimePickerLocale.zh_cn,
                                              pickerTheme: DateTimePickerTheme(
                                                showTitle: false,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 230,
                                            child: DateTimePickerWidget(
                                              dateFormat: _format,
                                              locale:
                                                  DateTimePickerLocale.zh_cn,
                                              pickerTheme: DateTimePickerTheme(
                                                showTitle: false,
                                              ),
                                            ),
                                          ),*/
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            });
                      },
                      child: Text("镶嵌")),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
