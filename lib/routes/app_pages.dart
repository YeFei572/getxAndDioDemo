import 'package:demo01/pages/dashboard/dashboard_binding.dart';
import 'package:demo01/pages/dashboard/dashboard_page.dart';
import 'package:demo01/routes/app_routes.dart';
import 'package:get/get.dart';

class AppPages {
  static var list = [
    GetPage(
      name: AppRoutes.DASHBOARD,
      page: () => DashboardPage(),
      binding: DashboardBinding(),
    )
  ];
}
