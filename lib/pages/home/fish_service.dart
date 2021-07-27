import 'package:demo01/library/dio_utils.dart';
import 'package:demo01/models/fish.dart';

class FishService {
  static Future<List<Fish>> getFishList(int page) async {
    return await DioUtils.instance.dio
        .get(
            "https://api.moyutang.fun/api/v1/posts/pc/postRate?page=$page&size=20&postRate=S")
        .then((value) {
      return (value.data['data'] as List).map((item) => Fish.fromJson(item)).toList();
    });
  }
}
