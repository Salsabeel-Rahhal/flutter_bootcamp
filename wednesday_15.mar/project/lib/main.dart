import 'package:flutter/material.dart';
import 'package:project/list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wednesday',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyList(),
    );
  }
}
