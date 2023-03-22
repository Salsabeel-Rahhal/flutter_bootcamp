import 'package:flutter/material.dart';
import 'package:project/profile.dart';

class MyList extends StatefulWidget {
  const MyList({super.key});

  @override
  State<MyList> createState() => _ListState();
}

class _ListState extends State<MyList> {
  List<Map> users = List.generate(
      50,
      (index) => {
            "id": index + 1,
            "name": "Name ${index + 1}",
          }).toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: users.length,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 120.0,
          childAspectRatio: 1.0,
          mainAxisSpacing: 0.0,
          crossAxisSpacing: 0.0,
        ),
        itemBuilder: (context, index) => Column(
          children: [
            const CircleAvatar(),
            Text(users[index]["name"]),
          ],
        ),
      ),
    );
  }
}

/****************************** */
//list view
 // ListView.separated(
      //   itemCount: users.length,
      // itemBuilder: ((context, index) => _WidgetItem(index),
      // separatorBuilder: Divider(color: Colors.blue) ,
      // ),
/******************************* */