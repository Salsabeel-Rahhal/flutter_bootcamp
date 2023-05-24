import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:project/view/screen/auth/sign_in_page.dart';
import 'package:project/view/screen/auth/sign_up_page.dart';
import 'package:project/view/screen/auth/success_sign_up.dart';
import 'package:project/view/screen/home_page.dart';
import 'package:project/view/screen/on_boarding_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: "Playfair_Display",
          primaryColor: Colors.purple.shade900,
          primarySwatch: Colors.purple,
        ),
        // supportedLocales: L10n.all,
        home: SignInPage());
  }
}
