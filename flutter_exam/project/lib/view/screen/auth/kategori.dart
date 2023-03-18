import 'dart:developer';
import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool obscureText = true;
  List<Map> users = List.generate(
      6,
      (index) => {
            "id": index + 1,
            "name": "Keripik Pisang ",
            "price": "30.000"
          }).toList();
  final _keyForm = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Kategori",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          actions: [
            IconButton(
                icon: Image.asset("assets/back.jpeg"),
                onPressed: (() => exit(0)))
          ],
        ),
        body: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                width: 400,
                child: Text(
                    "Makanan                                                                        ",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                child: TextField(
                    decoration: InputDecoration(
                        label: Text("    search Product Name"),
                        fillColor: Color.fromARGB(255, 217, 212, 212),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 249, 245, 245),
                                width: 3.0)),
                        suffixIcon: Icon(Icons.search),
                        iconColor: Color.fromARGB(255, 18, 18, 18))),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                    // scrollDirection: true,
                    shrinkWrap: true,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 1,
                      vertical: 1,
                    ),
                    itemCount: users.length,
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 333,
                      childAspectRatio: 1.0,
                      mainAxisSpacing: 5.0, // Horizatally.
                      crossAxisSpacing: 6.0, // Vertically
                    ),
                    itemBuilder: (context, index) => Column(
                          children: [
                            Card(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 38, horizontal: 4),
                                child: Column(
                                  children: [
                                    Container(
                                        width: 66,
                                        height: 66,
                                        child: Image(
                                            image: AssetImage(
                                                "assets/menu.jpeg"))),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                        width: 300,
                                        child: Text(
                                          users[index]["name"],
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12),
                                        )),
                                    Container(
                                      width: 300,
                                      child: Text(
                                        "RP.30.000",
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                              size: 9,
                                            ),
                                            Text(
                                              "4.6",
                                              style: TextStyle(fontSize: 9),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          "86 Reviews",
                                          style: TextStyle(fontSize: 9),
                                        ),
                                        Icon(
                                          Icons.power_input,
                                          size: 10,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              // Text(users[index]["name"]),
                            ),
                          ],
                        )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                //height: 45,
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {});
                    },
                    child: Center(
                        child: Text(
                      "Fliter & strong ",
                      style: TextStyle(color: Color.fromARGB(255, 3, 3, 3)),
                    )),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(
                                        color:
                                            Color.fromARGB(255, 4, 4, 4)))))),
              ),
            ),
          ],
        ));
  }
}
