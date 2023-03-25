import 'package:project/models/comment.dart';
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

  Future<List<Comment>> getCommentsById(int id) async {
    dynamic jsonObject = await ApiHelper().getRequest("posts/$id/comments");
    List<Comment> result = [];
    jsonObject.forEach((json) {
      result.add(Comment.fromJson(json));
    });
    return result;
  }

  Future<Post> getById(int id) async {
    dynamic jsonObject = await ApiHelper().getRequest("posts/$id");
    return Post.fromJson(jsonObject);
  }

  Future<Post> create(Post post) async {
    dynamic jsonObject = await ApiHelper().postRequest("posts", post.toJson());
    return Post.fromJson(jsonObject);
  }
}
