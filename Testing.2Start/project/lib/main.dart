import 'package:project/Stream.dart';
import 'package:flutter/material.dart';

void main() async {
  //initializa stream integer
  Stream stream = countStream(10);
  int sum = await sumStream(stream);
  print(sum);
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prvider lesson 1'),
      ),
      body: ChangeNotifierProvider<>
    );
  }
}