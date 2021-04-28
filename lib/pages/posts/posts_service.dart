import 'package:demo01/library/api_request.dart';
import 'package:demo01/models/post.dart';

class PostsService {
  void getPostsList({
    Function() beforeSend,
    Function(List<Post> posts) onSuccess,
    Function(dynamic error) onError,
  }) {
    ApiRequest(url: "https://jsonplaceholder.typicode.com/posts", data: null)
        .get(
      beforeSend: () => {
        if (null != beforeSend) {},
      },
      onSuccess: (data) => {
        onSuccess(
          (data as List).map((postJson) => Post.fromJson(postJson)).toList(),
        ),
      },
      onError: (error) => {
        if (null != error) {onError(error)}
      },
    );
  }
}
