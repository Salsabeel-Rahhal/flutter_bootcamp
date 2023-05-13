import 'package:flutter/material.dart';
import 'package:project/view/screen/on_boarding_page.dart';
import 'package:project/view/screen/sign_in_page.dart';

import 'routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: Colors.purple.shade900,
            primarySwatch: Colors.purple,
            primaryColorDark: Colors.deepPurple),
        home: const OnBoardingPage());
  }
}
