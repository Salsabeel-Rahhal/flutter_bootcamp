import 'dart:io';

import 'package:flutter/material.dart';

class FireOne extends StatefulWidget {
  const FireOne({super.key});

  @override
  State<FireOne> createState() => _FireOneState();
}

class _FireOneState extends State<FireOne> {
  final _formKey = GlobalKey<FormState>();
  final List<String> elemants = ['0', '2', '3', '4', '5'];
  String? _CurrentA;
  String? _CurrentB;
  int? _CurrentC;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            Text(
              'Update ypur ',
              style: TextStyle(fontSize: 18.5),
            ),
          ],
        ));
  }
}
