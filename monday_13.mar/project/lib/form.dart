import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  bool obscureText = true;

  TextEditingController daycontroller = new TextEditingController();
  TextEditingController monthcontroller = new TextEditingController();
  TextEditingController yearcontroller = new TextEditingController();

  final _keyRom = GlobalKey<FormState>();
  final emailControler = TextEditingController();
  final passwordControler = TextEditingController();
  final FullNameControler = TextEditingController();
  bool _autovalidate = false;
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
