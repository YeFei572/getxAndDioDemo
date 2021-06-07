import 'package:demo01/library/http_client.dart';
import 'package:demo01/models/post.dart';
import 'package:get/get.dart';

class PostsController extends GetxController {
  List<Post> postsList = [];
  bool isLoading = true;

  @override
  void onInit() {
    super.onInit();
    /* PostsService().getPostsList(
      onSuccess: (posts) {
        print('==========> ${posts.length}');
        posts.map((e) => print(e.title));
        postsList.addAll(posts);
        isLoading = false;
        update();
      },
      onError: (error) {
        isLoading = false;
        update();
      },
    );
    HttpClient()
        .get("https://jsonplaceholder.typicode.com/posts")
        .then((value) {
        print("________________isBlank");

    });*/
  }
}
