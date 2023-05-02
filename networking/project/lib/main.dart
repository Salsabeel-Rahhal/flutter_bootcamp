import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:project/model/post.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late Future<Post> postData;
  @override
  void initState() {
    super.initState();
    postData = getPostById();
  }

  //step two make a network request
  Future<Post> getPostById() async {
    http.Response postFuture = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/posts/1'));
    if (postFuture.statusCode == 200) {
      print(postFuture.body);
      return Post.fromJson(json.decode(postFuture.body));
      //success
    } else {
      throw Exception('can\'not load post data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Networking http "),
      ),
      body: Center(
        child: FutureBuilder<Post>(
          future: postData,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Text(snapshot.data!.title);
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
