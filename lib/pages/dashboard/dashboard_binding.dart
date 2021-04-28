import 'package:demo01/pages/account/account_controller.dart';
import 'package:demo01/pages/alerts/alerts_controller.dart';
import 'package:demo01/pages/dashboard/dashboard_controller.dart';
import 'package:demo01/pages/home/home_controller.dart';
import 'package:demo01/pages/posts/posts_controller.dart';
import 'package:get/get.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<PostsController>(() => PostsController());
    Get.lazyPut<AlertsController>(() => AlertsController());
    Get.lazyPut<AccountController>(() => AccountController());
  }
}
