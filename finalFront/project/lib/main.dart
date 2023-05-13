import 'package:flutter/material.dart';
import 'package:project/core/localization/l10n/l10n.dart';
import 'package:project/view/screen/language_page.dart';
import 'package:project/view/screen/on_boarding_page.dart';
import 'package:project/view/screen/sign_in_page.dart';

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
            textTheme: TextTheme(),
            fontFamily: "Playfaie_Display",
            primaryColor: Colors.purple.shade900,
            primarySwatch: Colors.purple,
            primaryColorDark: Colors.deepPurple),
        supportedLocales: L10n.all,
        home: OnBoardingPage());
  }
}
