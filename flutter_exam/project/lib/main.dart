import 'package:flutter/material.dart';
import 'package:project/view/screen/auth/detailProduct.dart';
import 'package:project/view/screen/auth/forget_password.dart';
import 'package:project/view/screen/auth/login.dart';
import 'package:project/view/screen/auth/onboarding.dart';
import 'package:get/get.dart';
import 'package:project/view/screen/auth/reset.dart';
import 'package:project/view/screen/auth/signup.dart';
import 'package:project/view/screen/auth/verfication.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Product(),
    );
  }
}
