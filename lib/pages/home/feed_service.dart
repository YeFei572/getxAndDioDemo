import 'package:demo01/library/dio_utils.dart';
import 'package:demo01/models/feed.dart';
import 'package:demo01/models/login_resp.dart';

class FeedService {
  static Future<List<Feed>> getFeedList(
      int page, Map<String, Object> headers) async {
    return await DioUtils.instance.dio
        .get(
      "https://api.moyutang.fun/api/v1/crowdfundings?page=$page&size=10",
    )
        .then((value) {
      return (value.data['data'] as List).map((item) => Feed.fromJson(item)).toList();
    });
  }

  static Future<LoginResp> login(String username, String password) async {
    return await DioUtils.instance.dio.post(
        "https://api.moyutang.fun/api/login",
        data: {"phone": username, "password": password}).then((val) {
      print(val);
      return LoginResp.fromJson(val);
    });
  }
}
