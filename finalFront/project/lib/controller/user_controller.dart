import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../data/model/user_model.dart';
import 'api_helper.dart';

class UserController {
  Future<bool> signIn(User user) async {
    try {
      dynamic jsonObject =
          await ApiHelper().postRequest("users/signIn", user.toJson());
      String type = jsonObject["type"];
      String token = jsonObject["token"];
      var storage = const FlutterSecureStorage();
      await storage.write(key: "token", value: "$type $token");

      return true;
    } catch (ex) {
      print(ex);
      rethrow;
    }
  }

  Future<User> update({
    required String password,
  }) async {
    try {
      var result = await ApiHelper().putRequest("users", {
        "password": password,
      });
      return User.fromJson(result);
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> getemail(User user) async {
    try {
      dynamic jsonObject =
          await ApiHelper().postRequest("sers/email", user.tojsonemail());
      String type = jsonObject["email"];

      var storage = const FlutterSecureStorage();
      await storage.write(key: "token", value: "$type ");

      return true;
    } catch (ex) {
      print(ex);
      rethrow;
    }
  }

  Future<User> getUser1() async {
    dynamic jsonObject = await ApiHelper().getRequest("users");
    return User.fromJson(jsonObject);
  }

  Future<User> getById(int id) async {
    dynamic jsonObject = await ApiHelper().getRequest("users/$id");
    return User.fromJson(jsonObject);
  }

  Future<bool> create(User user) async {
    try {
      dynamic jsonObject =
          await ApiHelper().postRequest("users/signUp", user.toJson());
      String type = jsonObject["type"];
      String token = jsonObject["token"];
      var storage = const FlutterSecureStorage();
      await storage.write(key: "token", value: "$type $token");

      return true;
    } catch (ex) {
      print(ex);
      rethrow;
    }
  }
}
