import 'package:flutter/material.dart';
import 'package:project/pageOne.dart';
import 'package:project/screen1.dart';
import 'package:project/screen2.dart';
import 'package:project/screen3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FireOne(),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/screen2': (context) => ScreenTwo(),
        '/screen1': (context) => ScreenOne(),
        '/screen3': (context) => ScreenThree(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Container(
            width: double.infinity,
            child: ElevatedButton(
              // Within the `FirstScreen` widget
              onPressed: () {
                Navigator.pushNamed(context, '/screen1');
              },
              child: const Text('ScreenOne'),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/screen2');
              },
              child: const Text('ScreenTwo'),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/screen3');
              },
              child: const Text('ScreenThree'),
            ),
          ),
        ],
      ),
    );
  }
}
