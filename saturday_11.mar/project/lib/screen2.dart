import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Wether extends StatefulWidget {
  const Wether({super.key});

  @override
  State<Wether> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Wether> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fourteen day weather"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              child: Expanded(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          children: [
                            Text(
                              ' Fourteen day weather',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.ios_share,
                              color: Colors.green,
                            ),
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          ' Amman - 934 m above sea level',
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 2,
                    ),
                    Row(
                      children: [
                        Text(
                          '03/11',
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text('saturday'),
                        Image.asset(
                          'assets/sun.jpeg',
                          height: 40,
                          width: 50,
                        ),
                        Text('22'),
                        Image.asset(
                          'assets/moon.jpeg',
                          height: 40,
                          width: 50,
                        ),
                        Text('12'),
                        Icon(
                          Icons.arrow_drop_down_sharp,
                          size: 24,
                          color: Colors.green,
                        )
                      ],
                    ),
                    Divider(
                      thickness: 2,
                    ),
                    Row(
                      children: [
                        Text(
                          '04/11',
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text('sunday '),
                        //Image.asset('assets/sun')

                        //image: "assets/cloud",
                        Image.asset(
                          'assets/sun.jpeg',
                          height: 40,
                          width: 50,
                        ),
                        Text('22'),
                        Icon(
                          Icons.mode_night_sharp,
                          size: 24,
                          color: Colors.purple,
                        ),
                        Text('14'),
                        Icon(
                          Icons.arrow_drop_down_sharp,
                          size: 24,
                          color: Colors.green,
                        )
                      ],
                    ),
                    Divider(
                      thickness: 2,
                    ),
                    Row(
                      children: [
                        Text(
                          '05/11',
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text('monday'),
                        Image.asset(
                          'assets/sun.jpeg',
                          height: 40,
                          width: 50,
                        ),
                        Text('20'),
                        Icon(
                          Icons.cloud,
                          size: 24,
                          color: Colors.purple,
                        ),
                        Text('11'),
                        Icon(
                          Icons.arrow_drop_down_sharp,
                          size: 24,
                          color: Colors.green,
                        )
                      ],
                    ),
                    Divider(
                      thickness: 2,
                    ),
                    Row(
                      children: [
                        Text(
                          '06/11',
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text('tuesday'),
                        Image.asset(
                          'assets/Un.jpeg',
                          height: 35,
                          width: 50,
                        ),
                        Text('14'),
                        Image.asset(
                          'assets/rainy.jpeg',
                          height: 40,
                          width: 50,
                        ),
                        Text('12'),
                        Icon(
                          Icons.arrow_drop_down_sharp,
                          size: 24,
                          color: Colors.green,
                        )
                      ],
                    ),
                    Divider(
                      thickness: 2,
                    ),
                    Row(
                      children: [
                        Text(
                          '07/11',
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text('wednday'),
                        Image.asset(
                          'assets/rainy.jpeg',
                          height: 45,
                          width: 50,
                        ),
                        Text('22'),
                        Image.asset(
                          'assets/moon.jpeg',
                          height: 40,
                          width: 50,
                        ),
                        Text('12'),
                        Icon(
                          Icons.arrow_drop_down_sharp,
                          size: 24,
                          color: Colors.green,
                        )
                      ],
                    ),
                    Divider(
                      thickness: 2,
                    ),
                    Row(
                      children: [
                        Text(
                          '08/11',
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text('Thusday'),
                        Image.asset(
                          'assets/Unk.jpeg',
                          height: 35,
                          width: 35,
                        ),
                        Text('15'),
                        Icon(
                          Icons.mode_night_sharp,
                          size: 24,
                          color: Colors.purple,
                        ),
                        Text('10'),
                        Icon(
                          Icons.arrow_drop_down_sharp,
                          size: 24,
                          color: Colors.green,
                        )
                      ],
                    ),
                    Divider(
                      thickness: 2,
                    ),
                    Row(
                      children: [
                        Text(
                          '09/11',
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text('Friday '),
                        Image.asset(
                          'assets/Unk.jpeg',
                          height: 35,
                          width: 65,
                        ),
                        Text('18'),
                        Image.asset(
                          'assets/y.jpeg',
                          height: 40,
                          width: 50,
                        ),
                        Text('9'),
                        Icon(
                          Icons.arrow_drop_down_sharp,
                          size: 24,
                          color: Colors.green,
                        )
                      ],
                    ),
                    Divider(
                      thickness: 2,
                    ),
                    Row(
                      children: [
                        Text(
                          '10/11',
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text('Saturday'),
                        Image.asset(
                          'assets/rainy_.jpeg',
                          height: 40,
                          width: 50,
                        ),
                        Text('12'),
                        Image.asset(
                          'assets/rainy.jpeg',
                          height: 40,
                          width: 50,
                        ),
                        Text('7'),
                        Icon(
                          Icons.arrow_drop_down_sharp,
                          size: 24,
                          color: Colors.green,
                        )
                      ],
                    ),
                    Divider(
                      thickness: 2,
                    ),
                    Row(
                      children: [
                        Text(
                          '11/11',
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text('sunday  '),
                        Image.asset(
                          'assets/rainy_.jpeg',
                          height: 40,
                          width: 50,
                        ),
                        Text('13'),
                        Image.asset(
                          'assets/moon.jpeg',
                          height: 40,
                          width: 50,
                        ),
                        Text('7'),
                        Icon(
                          Icons.arrow_drop_down_sharp,
                          size: 24,
                          color: Colors.green,
                        )
                      ],
                    ),
                    Divider(
                      thickness: 2,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Card(
                        child: Column(
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.more, color: Colors.green),
                                Icon(Icons.play_circle, color: Colors.green),
                                Icon(Icons.camera, color: Colors.green),
                                Icon(Icons.maps_ugc, color: Colors.green),
                                Icon(Icons.home,
                                    color: Color.fromARGB(255, 43, 155, 247)),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "more",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 43, 155, 247)),
                                ),
                                Text("video",
                                    style: TextStyle(color: Colors.grey)),
                                Text("observer",
                                    style: TextStyle(color: Colors.grey)),
                                Text("Map",
                                    style: TextStyle(color: Colors.grey)),
                                Text("Main",
                                    style: TextStyle(color: Colors.grey)),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
