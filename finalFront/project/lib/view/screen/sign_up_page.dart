import 'package:flutter/material.dart';
import 'package:project/view/widget/custom_auth/custom_button_auth.dart';
import 'package:project/view/widget/custom_auth/custom_text_form_auth.dart';
import '../widget/my_app_bar.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});
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
            padding: const EdgeInsets.all(15),
            child: ListView(
              children: const [
                //  LogoAuth(),
                CustomTextFormAuth(
                  hintText: "Enter your user name ",
                  labelText: "User Name",
                  iconData: Icons.person_2_outlined,
                ),
                CustomTextFormAuth(
                  hintText: "Enter your email",
                  labelText: "Email",
                  iconData: Icons.email_outlined,
                ),
                CustomTextFormAuth(
                  hintText: "Enter a password ",
                  labelText: "Password",
                  iconData: Icons.lock_outlined,
                ),
                CustomTextFormAuth(
                  hintText: "Enter your phone number",
                  labelText: "Phone",
                  iconData: Icons.phone_callback_outlined,
                ),
                SizedBox(
                  height: 20,
                ),
                CustomButtonAuth(
                  text: " Sign In",
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ));
  }
}
