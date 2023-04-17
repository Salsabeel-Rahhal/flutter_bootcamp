import 'package:flutter/material.dart';
import 'package:project/product_page.dart';
import 'package:project/profile.dart';
import 'cart_page.dart';
import 'firebase_options.dart';
import 'home_page.dart';
import 'login_page.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/login",
      routes: {
        "/home": (context) => HomeScreen(),
        "/login": (context) => LoginScreen(),
        "/product": (context) => ProductsPage(),
        "/profile": (context) => ProfilePage(),
        "/cart": (context) => CartPage(products: []),
      },
    );
  }
}

class User {
  String userName;
  String password;

  User({required this.userName, required this.password});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      userName: json["email"],
      password: json["password"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "userName": userName,
      "password": password,
    };
  }
}
