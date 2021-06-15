import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondController extends GetxController {
  String videoPath =
      "http://1252093142.vod2.myqcloud.com/4704461fvodcq1252093142/48c8a9475285890781000441992/playlist.m3u8";

  late BetterPlayerController betterPlayerController;

  @override
  void onInit() {
    BetterPlayerDataSource betterPlayerDataSource = BetterPlayerDataSource(
      BetterPlayerDataSourceType.network,
      videoPath,
    );
    betterPlayerController = BetterPlayerController(
        BetterPlayerConfiguration(
          autoPlay: true,
          subtitlesConfiguration: BetterPlayerSubtitlesConfiguration(),
          controlsConfiguration: BetterPlayerControlsConfiguration(
            controlBarColor: Colors.black87.withOpacity(0.2),
            skipBackIcon: Icons.arrow_back_ios_outlined,
          ),
        ),
        betterPlayerDataSource: betterPlayerDataSource);
    super.onInit();
  }
}
