import 'package:project/Stream.dart';
import 'package:flutter/material.dart';
import 'package:project/my_counter.dart';
import 'package:provider/provider.dart';

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
    return ChangeNotifierProvider<MyCounter>(
        create: (context) => MyCounter(),
        child: MaterialApp(
          title: 'Prvider lesson 1',
          //home: MyCounter();
        ));
  }
}
