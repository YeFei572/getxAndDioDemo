import 'package:demo01/constants.dart';
import 'package:demo01/responsive.dart';
import 'package:flutter/material.dart';

import 'package:demo01/pages/components/all_file_details.dart';
import 'package:demo01/pages/components/header.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(),
            SizedBox(
              height: defaultPadding,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      AllFileDetails(),
                      SizedBox(
                        height: defaultPadding,
                      ),
                    ],
                  ),
                ),
                if (!ResponsiveWidget.isMobile(context))
                  SizedBox(
                    width: defaultPadding,
                  ),
              ],
            ),
            if (ResponsiveWidget.isMobile(context))
              SizedBox(
                height: defaultPadding,
              ),
          ],
        ),
      ),
    );
  }
}
