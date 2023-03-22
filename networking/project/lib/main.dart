import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

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
  Future<HttpResponse> getPostById() async{
    HttpResponse postFuture = await Uri.http()

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("networking"),
      ),
      body: Center(
        child: Text("Welcome"),
      ),
    );
  }
}
