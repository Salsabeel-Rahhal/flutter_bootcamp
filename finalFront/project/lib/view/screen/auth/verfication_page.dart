import 'package:flutter/material.dart';
import 'package:project/controller/auth/timer_controller.dart';
import 'package:project/view/screen/auth/reset_password.dart';
import 'package:project/view/widget/custom_auth/custom_box_verfication.dart';
import 'package:project/view/widget/custom_auth/custom_button_auth.dart';
import 'package:project/view/widget/custom_auth/custom_text.dart';

import '../../widget/my_app_bar.dart';

class VerficationPage extends StatefulWidget {
  const VerficationPage({super.key});

  @override
  State<VerficationPage> createState() => _VerficationPageState();
}

class _VerficationPageState extends State<VerficationPage> {
  late final TimerController time;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize:
              const Size.fromHeight(200.0), // here the desired height
          child: MyAppBar(
            title: "Verfication Code",
            body: "",
            descriotion: "",
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(children: [
          // Container(
          //   width: 300,
          //   child: const Text(
          //       "Verification                                                                      ",
          //       style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
          // ),
          const SizedBox(
            height: 40,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              const Text(" verification Code ",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
              CustomText(textOne: "", textTwo: "Re-send Code", onTap: Text(""))
            ],
          ),
          const SizedBox(
            height: 20,
          ),

          Column(children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: const [
                  CustomBox(),
                  CustomBox(),
                  CustomBox(),
                  CustomBox(),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  " You can re-send the code after 30 minute's",
                  style: TextStyle(color: Colors.grey),
                ),
                Text("03:05 ", style: TextStyle(color: Colors.grey)),
              ],
            ),
            const SizedBox(
              height: 80,
            ),
            const CustomButtonAuth(text: "Continue", onPressed: Reset())
          ]),
        ]),
      ),
    );
  }
}
