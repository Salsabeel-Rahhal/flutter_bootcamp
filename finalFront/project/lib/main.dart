import 'package:flutter/material.dart';
import 'package:project/view/screen/auth/forget_password.dart';
import 'package:project/view/screen/auth/reset_password.dart';
import 'package:project/view/screen/auth/verfication_page.dart';
import 'package:project/view/screen/on_boarding_page.dart';
import 'package:project/view/screen/auth/sign_in_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Playfair_Display",
        primaryColor: Colors.purple.shade900,
        primarySwatch: Colors.purple,
      ),
      // supportedLocales: L10n.all,
      home: OnBoardingPage(),
    );
  }
}
