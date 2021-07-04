import 'package:demo01/pages/components/hashrate/hashrate_info_service.dart';
import 'package:get/get.dart';
import 'package:demo01/models/Report.dart';


class HashRateInfoController extends GetxController {
  Report report;
  bool isLoading = true;

  @override
  void onInit() {
    super.onInit();
    HashRateInfoService().getHashRate(
      onSuccess: (reports) {
        print('==========> ${reports.toJson()}');
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