import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:project/view/screen/auth/forget_password/forget_password.dart';
import 'package:project/view/screen/auth/forget_password/verfication_page.dart';
import 'package:project/view/screen/auth/sign_in_page.dart';
import 'package:project/view/screen/auth/sign_up_page.dart';
import 'package:project/view/screen/auth/success_sign_up.dart';
import 'package:project/view/screen/home_page.dart';
import 'package:project/view/screen/map2.dart';
import 'package:project/view/screen/map_page.dart';
import 'package:project/view/screen/on_boarding_page.dart';
import 'package:project/view/widget/current_location.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        builder: EasyLoading.init(),
        theme: ThemeData(
            fontFamily: "Playfair_Display",
            primaryColor: Colors.purple.shade900,
            primarySwatch: Colors.purple),
        // supportedLocales: L10n.all,
        home: RoundedMap());
  }
}
