import 'dart:html';
import 'dart:io';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:project/models/post.dart';
import 'package:project/controllers/post_controller.dart';

class FakeApiPage extends StatefulWidget {
  const FakeApiPage({super.key});

  @override
  State<FakeApiPage> createState() => _FakeApiPageState();
}

class _FakeApiPageState extends State<FakeApiPage> {
  List<Post> _posts = [];

  @override
  void initState() {
    super.initState();
    _getAllPosts();
    _getPostById();
  }

  _getAllPosts() async {
    PostController().getAll().then((result) {
      setState(() {
        _posts = result;
      });
    }).catchError((ex) {
      print(ex);
    });
  }

  Future _getPostById() async {
    var url = "https://jsonplaceholder.typicode.com/posts?=14";
    var response = await http.get(url as Uri);
    var responseBody = jsonDecode(response.body);
    print(responseBody[2]);

    setState(() {
      _posts.addAll(responseBody);
    });
    print(_posts);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Posts"),
        ),
        body: InkWell(
          onTap: () {
            _getPostById();
          },
          child: _posts.isEmpty
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.separated(
                  itemCount: _posts.length,
                  separatorBuilder: (context, index) => const Padding(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Divider(),
                      ),
                  itemBuilder: (context, index) => ListTile(
                        title: Text(_posts[index].title),
                        subtitle: Text(_posts[index].body),
                      )),
        ));
  }
}
