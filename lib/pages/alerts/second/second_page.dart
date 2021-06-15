import 'package:better_player/better_player.dart';
import 'package:demo01/pages/alerts/second/second_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<SecondController>(builder: (controller) {
        return Container(
          child: AspectRatio(
            aspectRatio: 16 / 9,
            child: BetterPlayer(
              controller: controller.betterPlayerController,
            ),
          ),
        );
      }),
    );
  }
}
