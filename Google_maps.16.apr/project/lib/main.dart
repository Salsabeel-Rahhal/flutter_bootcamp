import 'package:flutter/material.dart';
import 'package:project/drawer.dart';

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
        primarySwatch: Colors.lightGreen,
      ),
      home: const DrawerPage(),
    );
    Widget menuItem() {
      return Material(
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Row(
              children: [
                Expanded(
                    child: Icon(
                  Icons.dashboard,
                  size: 20,
                  color: Colors.black,
                )),
                Expanded(
                    flex: 3,
                    child: Text(
                      "Dashboard",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ))
              ],
            ),
          ),
        ),
      );
    }

    Widget MyListDrawer() {
      return Container(
        padding: EdgeInsets.only(top: 15),
        child: Column(
          children: [
            menuItem(),
          ],
        ),
      );
    }
  }
}
