
import '../models/user_model.dart';
import 'api_helper.dart';

class UserController {
  Future<List<UserModel>> getUser() async {
    dynamic jsonObject = await ApiHelper().getRequest("users");
    List<UserModel> users = [];
    jsonObject.forEach((v) => {users.add(UserModel.fromJson(v))});
    return users;
  }
}
