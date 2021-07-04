import 'package:demo01/library/api_request.dart';
import 'package:demo01/models/Report.dart';
import 'dart:convert';

class HomeService {
  void getHashRate({
    Function() beforeSend,
    Function(Report report) onSuccess,
    Function(dynamic error) onError,
  }) {
    ApiRequest(url: "https://stats.ezil.me/current_stats/0x426a77C7F2d74331e328B53281234fB6803D18F7.zil1d5x96nvdl6fy2l3yk92uppj3tle6us73apvluc/reported", data: null)
        .get(
      beforeSend: () => {
        if (null != beforeSend) {},
      },
      onSuccess: (data) => {
        onSuccess(Report.fromJson(data))
      },
      onError: (error) => {
        if (null != error) {onError(error)}
      },
    );
  }
}
