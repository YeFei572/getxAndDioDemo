import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondController extends GetxController {
  String videoPath =
      "http://1252093142.vod2.myqcloud.com/4704461fvodcq1252093142/48c8a9475285890781000441992/playlist.m3u8";

  late BetterPlayerController betterPlayerController;

  late Offset startPosition; // 起始位置
  late double movePan; // 偏移累计量总和
  Duration position = Duration(seconds: 0); // 当前时间

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
          enableMute: false,
          controlBarColor: Colors.black87.withOpacity(0.1),
          forwardSkipTimeInMilliseconds: 30000,
          backwardSkipTimeInMilliseconds: 15000,
          enablePlayPause: false,
          controlsHideTime: Duration(seconds: 1),
          playerTheme: BetterPlayerTheme.cupertino,
        ),
      ),
      betterPlayerDataSource: betterPlayerDataSource,
    );
    super.onInit();
  }

  Future<void> startHorizontal(DragStartDetails details) async {
    Duration? videoDuration =
        await betterPlayerController.videoPlayerController!.position;
    betterPlayerController.seekTo(videoDuration! + Duration(seconds: 30));
  }
}
