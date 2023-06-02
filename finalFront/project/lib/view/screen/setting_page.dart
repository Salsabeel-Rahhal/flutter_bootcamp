import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../widget/custom_bars/my_app_bar.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
          color: Colors.white,
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 16, right: 16),
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 74, 20, 140),
          Color.fromARGB(255, 182, 153, 217)
        ])),
        child: Container(
          child: ListView(
            children: [
              Row(
                children: [
                  LottieBuilder.asset('assets/animations/f7.json'),
                  const Text(
                    "Settings",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    " Account",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                height: 15,
                thickness: 2,
              ),
              const SizedBox(
                height: 10,
              ),
              buildAccountOptionRoe(context, "Change Password"),
              buildAccountOptionRoe(context, "Content Settings"),
              buildAccountOptionRoe(context, "Social"),
              buildAccountOptionRoe(context, "Language"),
              buildAccountOptionRoe(context, "Privacy and security"),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: const [
                  Icon(
                    Icons.volume_up_outlined,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    " Notifications",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                height: 15,
                thickness: 2,
              ),
              const SizedBox(
                height: 10,
              ),
              buildNotificationOptionRow("New for you", true),
              buildNotificationOptionRow("Account activity", true),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(7),
                width: 150,
                height: 35,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          spreadRadius: 1.5,
                          blurRadius: 12,
                          color: Colors.black.withOpacity(0.5),
                          offset: const Offset(2, 12)),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: InkWell(
                    onTap: () {},
                    child: const Text(
                      "Sign Out",
                      style: TextStyle(
                          fontSize: 14,
                          letterSpacing: 2.2,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row buildNotificationOptionRow(String title, bool isActive) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
              fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white70),
        ),
        Transform.scale(
            scale: 0.6,
            child: CupertinoSwitch(value: isActive, onChanged: (bool val) {}))
      ],
    );
  }

  GestureDetector buildAccountOptionRoe(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text("Change Password"),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text("1"),
                    Text("2"),
                    Text("3"),
                  ],
                ),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        "Close",
                        style: TextStyle(color: Colors.deepPurple),
                      ))
                ],
              );
            });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.white70),
            ),
            const Icon(
              Icons.arrow_forward_ios,
              color: Colors.white70,
              size: 18,
            )
          ],
        ),
      ),
    );
  }
}
