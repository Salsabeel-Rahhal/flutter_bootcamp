import '../../models/post.dart';
import 'api_helper.dart';

class PostController {
  Future<List<Post>> getAll() async {
    dynamic jsonObject = await ApiHelper().getRequest("posts");
    List<Post> result = [];
    jsonObject.forEach((json) {
      result.add(Post.fromJson(json));
    });
    return result;
  }
}
