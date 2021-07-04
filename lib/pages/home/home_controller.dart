import 'package:get/get.dart';
import 'package:demo01/models/Report.dart';
import 'package:demo01/pages/home/home_service.dart';

class HomeController extends GetxController {
  Report report;
  bool isLoading = true;

  @override
  void onInit() {
    super.onInit();
    HomeService().getHashRate(
      onSuccess: (reports) {
        print('==========> ${reports}');
        print('==========> ${reports}');
        report = reports;
        isLoading = false;
        update();
      },
      onError: (error) {
        isLoading = false;
        update();
      },
    );
  }
}
