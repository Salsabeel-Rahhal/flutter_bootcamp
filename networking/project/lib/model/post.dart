import 'dart:core';
import 'package:flutter/material.dart';

//step three to convert the json obj
class Post {
  int id;
  int userId;
  String title;
  String body;
  //constructer
  Post(
      {required this.id,
      required this.userId,
      required this.title,
      required this.body});
  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
        id: json['id'],
        userId: json['userId'],
        title: json['title'],
        body: json['body']);
  }
}
