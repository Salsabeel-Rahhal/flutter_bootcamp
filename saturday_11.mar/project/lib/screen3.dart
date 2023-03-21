import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Task3 extends StatefulWidget {
  const Task3({super.key});

  @override
  State<Task3> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Task3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(' Notofication '),
        ),
        body: Container(
          //height: ,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 55,
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/profile.jpeg'),
                        ),
                      ),
                      Container(
                        width: 330,
                        child: TextField(
                          decoration: InputDecoration(
                              label: Text(
                                "Search",
                                style: TextStyle(color: Colors.grey),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              prefixIcon: Container(child: Icon(Icons.search))),
                        ),
                      ),
                      Container(width: 45, child: Icon(Icons.message))
                    ],
                  )
                ],
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      width: 60,
                      child: Image(image: AssetImage("assets/googl.jpeg"))),
                  Container(
                    width: 300,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Google ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text:
                                'has a new play for gaming. See this report on the companys announcement.',
                          ),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text("2d"),
                        ],
                      ),
                      Row(
                        children: [
                          Container(height: 20, child: Icon(Icons.power_input)),
                        ],
                      )
                    ],
                  )
                ],
              ),
              Divider(
                thickness: 3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      width: 60,
                      child:
                          Image(image: AssetImage("assets/mullenlove.jpeg"))),
                  Container(
                    width: 300,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text:
                                'Masoud Alhelou and 2 other connections follow ',
                          ),
                          TextSpan(
                            text: 'MullenLowe,',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                              text: "a Page you might be interested in f....")
                        ],
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text("2d"),
                        ],
                      ),
                      Row(
                        children: [
                          Container(height: 20, child: Icon(Icons.power_input)),
                        ],
                      )
                    ],
                  )
                ],
              ),
              Divider(
                thickness: 3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      width: 60,
                      child: Image(image: AssetImage("assets/warp_up.jpeg"))),
                  Container(
                    width: 300,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Thursday ',
                          ),
                          TextSpan(
                            text: 'Wrap-Up:',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                              text:
                                  "You don't need success to be happy; Middle East leads business travel rebound; an..")
                        ],
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text("2d"),
                        ],
                      ),
                      Row(
                        children: [
                          Container(height: 20, child: Icon(Icons.power_input)),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              Divider(
                thickness: 3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      width: 60,
                      height: 60,
                      child: Image(image: AssetImage("assets/ttttt.jpeg"))),
                  Container(
                    width: 300,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text:
                                'Women working in tech face unique challenges. A digital media expert explains. ',
                          ),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text("2d"),
                        ],
                      ),
                      Row(
                        children: [
                          Container(height: 20, child: Icon(Icons.power_input)),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              Divider(
                thickness: 3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      width: 60,
                      height: 60,
                      child:
                          Image(image: AssetImage("assets/mullenlove.jpeg"))),
                  Container(
                    width: 300,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text:
                                'Stay positive and avoid venting when asked what you want in a manger. Here are some more tips.',
                          ),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text("2d"),
                        ],
                      ),
                      Row(
                        children: [
                          Container(height: 20, child: Icon(Icons.power_input)),
                        ],
                      )
                    ],
                  )
                ],
              ),
              Divider(
                thickness: 3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      width: 60,
                      height: 60,
                      child: Image(image: AssetImage("assets/profile.jpeg"))),
                  Container(
                    width: 300,
                    child: Column(
                      children: [
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Admins of ',
                              ),
                              TextSpan(
                                text: 'JavaScript,',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(text: "recommended "),
                              TextSpan(
                                text: 'Jeff Falls',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                  text:
                                      " post: Webinar: Thursday, March 23, 2023 | 11:00 am PDT Sav..."),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  height: 30, child: Text("22 reactions "))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text("2d"),
                        ],
                      ),
                      Row(
                        children: [
                          Container(height: 20, child: Icon(Icons.power_input)),
                        ],
                      )
                    ],
                  )
                ],
              ),
              Divider(
                thickness: 3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 55,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/profile.jpeg'),
                    ),
                  ),
                  Container(
                    width: 300,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                              text: 'Yasmin El Sheikh',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(
                            text: 'was live: Lets Pause with Yasmin ElSheikh',
                          ),
                          // TextSpan(
                          //   text: '',
                          //   style: TextStyle(fontWeight: FontWeight.bold),
                          // ),
                          // TextSpan(text: "a Page you might be interested in f....")
                        ],
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text("3d"),
                        ],
                      ),
                      Row(
                        children: [
                          Container(height: 20, child: Icon(Icons.power_input)),
                        ],
                      )
                    ],
                  )
                ],
              ),
              Divider(
                thickness: 3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      width: 60,
                      height: 60,
                      child:
                          Image(image: AssetImage("assets/mullenlove.jpeg"))),
                  Container(
                    width: 300,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text:
                                'Stay positive and avoid venting when asked what you want in a manger. Here are some more tips.',
                          ),
                          // TextSpan(
                          //   text: 'MullenLowe,',
                          //   style: TextStyle(fontWeight: FontWeight.bold),
                          // ),
                          // TextSpan(text: "a Page you might be interested in f....")
                        ],
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text("2d"),
                        ],
                      ),
                      Row(
                        children: [
                          Container(height: 20, child: Icon(Icons.power_input)),
                        ],
                      )
                    ],
                  )
                ],
              ),
              Divider(
                thickness: 3,
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
                          Text("video", style: TextStyle(color: Colors.grey)),
                          Text("observer",
                              style: TextStyle(color: Colors.grey)),
                          Text("Map", style: TextStyle(color: Colors.grey)),
                          Text("Main", style: TextStyle(color: Colors.grey)),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
