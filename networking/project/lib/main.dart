import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: Text("Login"),
        ),
      ),
    );
  }
}
