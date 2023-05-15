import 'package:flutter/material.dart';
import 'package:project/view/widget/custom_auth/custom_text_sign_up.dart';
import '../widget/my_app_bar.dart';
import 'package:project/view/widget/custom_auth/custom_button_auth.dart';
import 'package:project/view/widget/custom_auth/custom_text_form_auth.dart';

class SignInPage extends StatelessWidget {
  SignInPage({super.key});
  var controller = PageController();
  String body = "";
  String desc = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize:
                const Size.fromHeight(200.0), // here the desired height
            child: MyAppBar(
              body: body,
              descriotion: desc,
            )),
        body: Container(
          margin: const EdgeInsets.only(top: 25),
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: ListView(
              children: [
                //  LogoAuth(),
                CustomTextFormAuth(
                  hintText: "Enter your email ",
                  labelText: "Email",
                  iconData: Icons.email_outlined,
                ),
                CustomTextFormAuth(
                  hintText: "Enter your password",
                  labelText: "Password",
                  iconData: Icons.lock_outlined,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Forget Password",
                  textAlign: TextAlign.end,
                ),
                CustomButtonAuth(
                  text: " Sign In",
                ),
                SizedBox(
                  height: 20,
                ),
                CustomText(
                  textOne: "Don't have an account ? ",
                  textTwo: " Sign Up",
                  onTap: () {
                    controller;
                  },
                )
              ],
            ),
          ),
        ));
  }
}
