import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:window_size/window_size.dart' as window_size;
import 'package:window_size/window_size.dart';

class WindowSizeService {
  static const double width = 487.5;

  static const double height = 867.2;

  Future<PlatformWindow> _getPlatformWindow() async {
    return await window_size.getWindowInfo();
  }

  void _setWindowSize(PlatformWindow platformWindow) {
    final Rect frame = Rect.fromCenter(
      center: Offset(
        platformWindow.frame.center.dx,
        platformWindow.frame.center.dy,
      ),
      width: width,
      height: height,
    );

    window_size.setWindowFrame(frame);

    setWindowTitle(
      '${Platform.operatingSystem} App',
    );

    /// 此处的判断是指，只要是苹果或者微软，那么设置其最大尺寸和最小尺寸， 可以另作调整
    if (Platform.isMacOS || Platform.isWindows) {
      window_size.setWindowMinSize(Size(width, height));
      window_size.setWindowMaxSize(Size(width, height));
    }
  }

  Future<void> initialize() async {
    PlatformWindow platformWindow = await _getPlatformWindow();

    if (platformWindow.screen != null) {
      if (platformWindow.screen!.visibleFrame.width != 800 ||
          platformWindow.screen!.visibleFrame.height != 500) {
        _setWindowSize(platformWindow);
      }
    }
  }

  void setWindowTitle(String title) {
    window_size.setWindowTitle(title);
  }
}
