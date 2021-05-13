import 'package:demo01/library/net_util.dart';
import 'package:demo01/models/feed.dart';
import 'package:demo01/models/login_resp.dart';

class FeedService {
  static Future<List<Feed>> getFeedList(
      int page, Map<String, Object> headers) async {
    return await request4GetWithToken(
            "https://api.moyutang.fun/api/v1/crowdfundings?page=$page&size=10",
            headers: headers)
        .then((value) {
      return (value['data'] as List)
          .map((item) => Feed.fromJson(item))
          .toList();
    });
  }

  static Future<LoginResp> login(String username, String password) async {
    return await request4PostWithToken("https://api.moyutang.fun/api/login",
            queryParameters: {"phone": username, "password": password})
        .then((val) => LoginResp.fromJson(val));
  }
}
