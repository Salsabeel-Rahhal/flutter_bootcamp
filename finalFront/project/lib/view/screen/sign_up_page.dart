import 'package:flutter/material.dart';
import '../widget/my_app_bar.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});
  String Up = "Sign Up";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(200.0), // here the desired height
          child: MyAppBar(
            Title: Up,
          )),
      body: Scaffold(),
    );
  }
}
