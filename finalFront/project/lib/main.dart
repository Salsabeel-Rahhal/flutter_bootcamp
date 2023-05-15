import 'package:flutter/material.dart';
import 'package:project/core/localization/l10n/l10n.dart';
import 'package:project/view/screen/on_boarding_page.dart';
import 'package:project/view/screen/sign_in_page.dart';

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
        fontFamily: "Cairo",
        primaryColor: Colors.purple.shade900,
        primarySwatch: Colors.purple,
      ),
      // supportedLocales: L10n.all,
      home: SignInPage(),
    );
  }
}
