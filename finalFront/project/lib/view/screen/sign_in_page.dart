import 'package:flutter/material.dart';
import '../widget/my_app_bar.dart';

class SignInPage extends StatelessWidget {
  SignInPage({super.key});
  String In = "Sign In";
  String body="Welcome Back";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(200.0), // here the desired height
            child: MyAppBar(
              Title: In,
              body: ,
            )),
        body: Container(
          padding: EdgeInsets.all(15),
          child: ListView(
            children: [Text('Welcome Back')],
          ),
        ));
  }
}
