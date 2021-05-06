import 'package:demo01/library/net_util.dart';
import 'package:demo01/models/post.dart';

class PostsService {
  // void getPostsList({
  //   Function() beforeSend,
  //   Function(List<Post> posts) onSuccess,
  //   Function(dynamic error) onError,
  // }) {
  //   ApiRequest(url: "https://jsonplaceholder.typicode.com/posts", data: null)
  //       .get(
  //     beforeSend: () => {
  //       if (null != beforeSend) {},
  //     },
  //     onSuccess: (data) => {
  //       onSuccess(
  //         (data as List).map((postJson) => Post.fromJson(postJson)).toList(),
  //       ),
  //     },
  //     onError: (error) => {
  //       if (null != error) {onError(error)}
  //     },
  //   );
  // }

  void getPostsList() {
    request4GetWithToken("https://jsonplaceholder.typicode.com/posts").then(
        (value) => {(value as List).map((e) => Post.fromJson(e)).toList()});
  }
}
