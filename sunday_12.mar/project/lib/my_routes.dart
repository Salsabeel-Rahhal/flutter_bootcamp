import 'package:flutter/material.dart';
import 'package:project/constatnts.dart';
import 'package:project/home_page.dart';

class MyRoutes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(builder: (context) => HomePage(email: ""));
        break;
      case loginPage:
        return MaterialPageRoute(builder: (context) => HomePage(email: ""));
        break;
      case '/product':
        return MaterialPageRoute(builder: (context) => HomePage(email: ""));
        break;
      default:
        break;
    }
    return MaterialPageRoute(
        builder: (context) => Scaffold(
              body: Text("no route"),
            ));
  }
}
