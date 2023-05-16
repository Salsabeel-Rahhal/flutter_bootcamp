import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:project/view/screen/auth/forget_password.dart';
import 'package:project/view/screen/auth/sign_up_page.dart';
import '../../../controller/auth/sign_in_controller.dart';
import '../../widget/custom_auth/custom_text.dart';
import '../../widget/my_app_bar.dart';
import 'package:project/view/widget/custom_auth/custom_button_auth.dart';
import 'package:project/view/widget/custom_auth/custom_text_form_auth.dart';

class SignInPage extends StatelessWidget {
  SignInPage({super.key});
  final controller = PageController();
  final _controllerEmail = TextEditingController();
  final _controllerPassword = TextEditingController();
  String body = "";
  String desc = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize:
                const Size.fromHeight(200.0), // here the desired height
            child: MyAppBar(
              title: "Sign In",
              body: body,
              descriotion: desc,
            )),
        body: Container(
          margin: const EdgeInsets.only(top: 15),
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: ListView(
              children: [
                //  LogoAuth(),
                const Text(
                  " Welcome Back ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 27,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  " You can sign in with email or continue with \n social media",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black54),
                ),
                CustomTextFormAuth(
                  hintText: "Enter your email ",
                  labelText: "Email",
                  iconData: Icons.email_outlined,
                  controller: _controllerEmail,
                ),
                CustomTextFormAuth(
                  hintText: "Enter your password",
                  labelText: "Password",
                  iconData: Icons.lock_outlined,
                  controller: _controllerPassword,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomText(
                  textOne: "",
                  textTwo: "Forget Password ? ",
                  onTap: ForgetPassword(),
                ),
                CustomButtonAuth(
                  text: " Sign In",
                  onPressed: SignInPage(),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomText(
                    textOne: "Don't have an account ? ",
                    textTwo: " Sign Up",
                    onTap: SignUpPage())
              ],
            ),
          ),
        ));
  }
}
