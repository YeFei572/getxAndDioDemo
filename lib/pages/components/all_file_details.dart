import 'package:demo01/constants.dart';
import 'package:demo01/models/DemoFiles.dart';
import 'package:demo01/responsive.dart';
import 'package:flutter/material.dart';

import 'hashrate/hashrate_info_card.dart';
import 'reward_info_card.dart';

class AllFileDetails extends StatelessWidget {
  const AllFileDetails({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ResponsiveWidget(
          mobile: FileInfoCardGridView(
            crossAxisCount: ResponsiveWidget.cardGridCount(context),
            childAspectRatio: ResponsiveWidget.cardAspectRatio(context),
          ),
          tablet: FileInfoCardGridView(),
          desktop: FileInfoCardGridView(
            childAspectRatio: ResponsiveWidget.cardAspectRatio(context),
          ),
        ),
      ],
    );
  }
}

class FileInfoCardGridView extends StatelessWidget {
  final int crossAxisCount;
  final double childAspectRatio;
  const FileInfoCardGridView({
    Key key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: demoFileList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (BuildContext context, int index) {
        if(index == 0) {
          return HashRateInfoCard(demoFile: demoFileList[index]);
        } else {
          return RewardsInfoCard(demoFile: demoFileList[index]);
        }
      },
    );
  }
}
