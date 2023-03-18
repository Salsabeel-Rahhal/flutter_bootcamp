import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("المزيد",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromARGB(255, 35, 34, 34),
              fontSize: 18,
            )),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
            child: Column(
          children: [
            Container(
              height: 120,
              child: Card(
                  margin: EdgeInsets.only(top: 15, bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                          padding: EdgeInsets.only(left: 15, right: 250),
                          onPressed: () {},
                          icon: Icon(Icons.arrow_back_ios_new)),
                      Text(
                        "LOGIN",
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/pic.png"),
                        radius: 25,
                        //child: ,
                      ),
                    ],
                  )),
            ),
            Container(
              height: 90,
              child: Card(
                  margin: EdgeInsets.only(top: 12, bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                          padding: EdgeInsets.only(left: 15, right: 250),
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_back_ios_new,
                            color: Colors.blue,
                          )),
                      Text(
                        "Settings",
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      CircleAvatar(
                          radius: 22,
                          backgroundColor: Colors.teal,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.settings,
                              color: Colors.tealAccent[400],
                              size: 25,
                            ),
                          ))
                    ],
                  )),
            ),
            Container(
              height: 90,
              child: Card(
                  margin: EdgeInsets.only(top: 15, bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        padding: EdgeInsets.only(left: 15, right: 250),
                        onPressed: () {},
                        icon: Icon(Icons.arrow_back_ios_new),
                        color: Colors.blue,
                      ),
                      Text(
                        "Participate",
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      CircleAvatar(
                          radius: 22,
                          backgroundColor: Colors.teal,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.attach_money_rounded,
                              color: Colors.tealAccent[400],
                              size: 25,
                            ),
                          ))
                    ],
                  )),
            ),
            Container(
              height: 90,
              child: Card(
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        padding: EdgeInsets.only(left: 15, right: 250),
                        onPressed: () {},
                        icon: Icon(Icons.arrow_back_ios_new),
                        color: Colors.blue,
                      ),
                      Text(
                        "About Us",
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      CircleAvatar(
                          radius: 22,
                          backgroundColor: Colors.teal,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.settings,
                              color: Colors.tealAccent[400],
                              size: 25,
                            ),
                          ))
                    ],
                  )),
            ),
            Container(
              height: 90,
              child: Card(
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        padding: EdgeInsets.only(left: 15, right: 250),
                        onPressed: () {},
                        icon: Icon(Icons.arrow_back_ios_new),
                        color: Colors.blue,
                      ),
                      Text(
                        "Report",
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      CircleAvatar(
                          radius: 22,
                          backgroundColor: Colors.teal,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.settings,
                              color: Colors.tealAccent[400],
                              size: 25,
                            ),
                          ))
                    ],
                  )),
            ),
            Container(
              height: 90,
              child: Card(
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        padding: EdgeInsets.only(left: 15, right: 250),
                        onPressed: () {},
                        icon: Icon(Icons.arrow_back_ios_new),
                        color: Colors.blue,
                      ),
                      Text(
                        "Evaluate Us",
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      CircleAvatar(
                          radius: 22,
                          backgroundColor: Colors.teal,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.settings,
                              color: Colors.tealAccent[400],
                              size: 25,
                            ),
                          ))
                    ],
                  )),
            ),
            Container(
              height: 90,
              child: Card(
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        padding: EdgeInsets.only(left: 15, right: 250),
                        onPressed: () {},
                        icon: Icon(Icons.arrow_back_ios_new),
                        color: Colors.blue,
                      ),
                      Text(
                        "Share",
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      CircleAvatar(
                          radius: 22,
                          backgroundColor: Colors.teal,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.settings,
                              color: Colors.tealAccent[400],
                              size: 25,
                            ),
                          ))
                    ],
                  )),
            ),
            Container(
              height: 90,
              child: Card(
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        padding: EdgeInsets.only(left: 15, right: 250),
                        onPressed: () {},
                        icon: Icon(Icons.arrow_back_ios_new),
                        color: Colors.blue,
                      ),
                      Text(
                        "ads with Us",
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      CircleAvatar(
                          radius: 22,
                          backgroundColor: Colors.teal,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.campaign,
                              color: Colors.tealAccent[400],
                              size: 25,
                            ),
                          ))
                    ],
                  )),
            ),
          ],
        )),
      ),
    );
  }
}
