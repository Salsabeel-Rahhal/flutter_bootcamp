import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:project/view/widget/custom_text_form_aith.dart';
import '../widget/my_app_bar.dart';

class SignInPage extends StatelessWidget {
  SignInPage({super.key});
  String pageName = "Sign In";
  String body = "Welcome Back !";
  String desc =
      "Sign In With Your Email And Password \n Or Continue With Social Media";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize:
                const Size.fromHeight(200.0), // here the desired height
            child: MyAppBar(
              Title: pageName,
              body: body,
              descriotion: desc,
            )),
        body: Container(
          margin: const EdgeInsets.only(top: 25),
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
          child: Container(
            padding: const EdgeInsets.all(15),
            child: ListView(
              children: [
                const CustomTextFormAuth(
                  hintText: "Enter your email ",
                  labelText: "Email",
                  iconData: Icons.email_outlined,
                ),
                const CustomTextFormAuth(
                  hintText: "Enter your password",
                  labelText: "Password",
                  iconData: Icons.lock_outlined,
                )
              ],
            ),
          ),
        ));
  }
}
