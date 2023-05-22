import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  String? email;
  String? password;
  String? fullname;

  User({this.email, this.password, this.fullname});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      email: json["email"],
      password: json["password"],
      fullname: json["fullname"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "email": email,
      "password": password,
      "fullname": fullname,
    };
  }

  Map<String, dynamic> tojsonemail() {
    return {
      "email": email,
    };
  }

  factory User.fromQuery(QueryDocumentSnapshot<Object?> json) {
    return User(
      password: json["password"] ?? "",
      email: json["email"] ?? "",
    );
  }
}
