import 'package:demo01/models/post.dart';
import 'package:demo01/pages/posts/posts_service.dart';
import 'package:get/get.dart';

class PostsController extends GetxController {
  List<Post> postsList = [];
  bool isLoading = true;

  @override
  void onInit() {
    super.onInit();
    PostsService().getPostsList(
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
  }
}
