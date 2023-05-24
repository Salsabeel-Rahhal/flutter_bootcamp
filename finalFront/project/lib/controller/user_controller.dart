import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:project/data/model/sign_in_model.dart';
import '../data/model/user_model.dart';
import 'api_helper.dart';

class UserController {
  Future<SignInModel> signIn(String email, String password) async {
    try {
      var result = await ApiHelper().postRequest("users/signIn", {
        "email": email,
        "password": password,
      });
      return SignInModel.fromJson(result);
    } catch (e) {
      rethrow;
    }
  }

  Future<User> update(
      {required String email,
      required String password,
      required String username}) async {
    try {
      var result = await ApiHelper().putRequest("users", {
        "email": email,
        "password": password,
        "username": username,
      });
      return User.fromJson(result);
    } catch (e) {
      rethrow;
    }
  }

  Future<User> getUser() async {
    try {
      var result = await ApiHelper().getRequest("users");
      return User.fromJson(result);
    } catch (e) {
      rethrow;
    }
  }

  // Future<String> uploadImage(File file) async {
  //   try {
  //     var result = await ApiHelper().uploadImage(file, "/api/storage");
  //     print(result);
  //     return result["path"];
  //   } catch (ex) {
  //     print(ex);
  //     rethrow;
  //   }
  // }
}
