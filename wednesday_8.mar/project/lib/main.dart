import 'package:flutter/material.dart';
import 'package:project/facebook_page.dart';
import 'package:project/post.dart';
import 'package:project/cart.dart';
import 'package:project/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facebook',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProfilePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Homepage'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CartPage(
                    selectedProducts: ['Product 1', 'Product 2'],
                  ),
                ),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Text('Welcome to the homepage!'),
      ),
    );
  }
}
