import 'package:flutter/material.dart';
import '../widget/my_app_bar.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(200.0), // here the desired height
          child: MyAppBar()),
      body: Scaffold(),
    );
  }
}
