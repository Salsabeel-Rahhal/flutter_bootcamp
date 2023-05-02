import 'package:flutter/material.dart';
import 'package:project/counter_provider.dart';
import 'package:provider/provider.dart';

class NextPage extends StatefulWidget {
  const NextPage({super.key});

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    var counterProvider = Provider.of<CounterProvider>(context);
    return Scaffold(
        appBar: AppBar(title: Text("Next Page")),
        body: Center(
          child: Text("${counterProvider.counter}"),
        ));
  }
}
