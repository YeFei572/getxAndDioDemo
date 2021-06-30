import 'package:demo01/utils/net/pretty_http.dart';

class PostsService {
  Future test() async {
    PrettyHttp.http(PrettyHttp.GET, "/api/v1/profiles/5ae04bea3b1b6304ffc999de",
            beAuth: true)
        .then((value) {
      print(value.toString());
    });
  }
}
