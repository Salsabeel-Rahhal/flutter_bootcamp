import 'package:flutter/material.dart';

import 'User.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    User user = ModalRoute.of(context)?.settings.arguments as User;
    return Scaffold(
      appBar: AppBar(
        title: Text(" Profile_page"),
      ),
      body: Container(
        height: 100,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/profile.jpeg'),
              ),
              Card(
                child: SizedBox(
                  height: 15,
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Name : ${user.name.toString()} ',
                      // labelText: t
                    ),
                  ),
                ),
              ),
              Card(
                child: SizedBox(
                  height: 15,
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: " Id :${user.id.toString()}",
                    ),
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
