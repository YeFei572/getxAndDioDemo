// @dart=2.12
// ^ This can be any version < 2.12
import 'dart:io';

import 'package:demo01/routes/app_pages.dart';
import 'package:demo01/utils/get_store_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'library/constant.dart';
import 'routes/app_routes.dart';
import 'themes/app_theme.dart';
import 'window_size_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  /*if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    final WindowSizeService windowSizeService = WindowSizeService();
    windowSizeService.initialize();
  }*/

  /// 初始化一些配置
  await initConfig();

  runApp(MyApp());
  if (Platform.isAndroid) {
    // 以下两行 设置android状态栏为透明的沉浸。写在组件渲染之后，是为了在渲染后进行set赋值，覆盖状态栏，写在渲染之前MaterialApp组件会覆盖掉这个值。
    SystemUiOverlayStyle systemUiOverlayStyle =
        SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}

Future<void> initConfig() async {
  await GetStorage.init();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String? themeStr = StoreUtils.store.read(Constant.theme);
    return ScreenUtilInit(
      designSize: Size(750, 1334),
      builder: () => GetMaterialApp(
        initialRoute: AppRoutes.DASHBOARD,
        getPages: AppPages.list,
        debugShowCheckedModeBanner: false,
        theme: themeStr == null || themeStr == "light"
            ? AppTheme.light
            : AppTheme.dark,
        darkTheme: AppTheme.dark,
        themeMode: ThemeMode.system,
      ),
    );
  }
}
