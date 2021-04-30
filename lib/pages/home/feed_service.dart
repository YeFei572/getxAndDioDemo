import 'package:demo01/library/net_util.dart';
import 'package:demo01/models/feed.dart';

class FeedService {
  static Future<List<Feed>> getFeedList() async {
    return await request4GetWithToken(
            "https://api.moyutang.fun/api/v1/home/pc/getRecommendCfs4PC")
        .then((value) =>
            (value as List).map((item) => Feed.fromJson(item)).toList());
  }
}
