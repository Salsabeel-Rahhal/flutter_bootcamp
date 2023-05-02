import 'package:flutter/material.dart';
import 'package:project/controllers/user_controller.dart';
import 'package:project/models/user_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key, required this.title});
  final String title;
  List<UserModel> _users = [];

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<UserModel> _users = [];
  void initState() {
    super.initState();
    _getUsers();
  }

  _getUsers() {
    UserController().getUser().then((value) {});
    setState(() {
      _users=value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView.builder(
            itemCount: _users.length,
            itemBuilder: (context, index) {
              return ListTile(
                  title: Text(_users[index].name),
                  subtitle: Text(_users[index].email));
            }));
  }
}
