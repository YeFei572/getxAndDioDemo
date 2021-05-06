import 'package:demo01/library/net_util.dart';
import 'package:demo01/models/fish.dart';

class FishService {
  static Future<List<Fish>> getFishList(int page) async {
    return await request4GetWithToken(
            "https://api.moyutang.fun/api/v1/posts/pc/postRate?page=$page&size=20&postRate=S")
        .then((value) {
      return (value['data'] as List).map((item) => Fish.fromJson(item)).toList();
    });
  }
}
