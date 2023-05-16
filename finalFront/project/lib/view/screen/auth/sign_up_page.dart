import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:project/view/screen/auth/sign_in_page.dart';
import 'package:project/view/widget/custom_auth/custom_button_auth.dart';
import 'package:project/view/widget/custom_auth/custom_text_form_auth.dart';
import '../../../controller/auth/sign_in_controller.dart';
import '../../widget/custom_auth/custom_text.dart';
import '../../widget/my_app_bar.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});
  final _controllerUserName = TextEditingController();
  final _controllerEmail = TextEditingController();
  final _controllerPhoneNumber = TextEditingController();
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
              // AssetImage("assets/images/onboardingone.png")
              title: "Sign Up",
              body: body,
              descriotion: desc,
            )),
        body: Container(
          margin: const EdgeInsets.only(top: 12),
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
          child: Container(
            padding: const EdgeInsets.all(15),
            child: ListView(
              children: [
                //  LogoAuth(),
                CustomTextFormAuth(
                  hintText: "Enter your user name ",
                  labelText: "User Name",
                  iconData: Icons.person_2_outlined,
                  controller: _controllerUserName,
                ),
                CustomTextFormAuth(
                  hintText: "Enter your email",
                  labelText: "Email",
                  iconData: Icons.email_outlined,
                  controller: _controllerEmail,
                ),
                CustomTextFormAuth(
                  hintText: "Enter your phone number",
                  labelText: "Phone",
                  iconData: Icons.phone_callback_outlined,
                  controller: _controllerPhoneNumber,
                ),
                CustomTextFormAuth(
                  hintText: "Enter a password ",
                  labelText: "Password",
                  iconData: Icons.lock_outlined,
                  controller: _controllerPassword,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomButtonAuth(
                  text: " Sign Up",
                  onPressed: SignUpPage(),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomText(
                    textOne: " have an account ? ",
                    textTwo: " Sign In",
                    onTap: SignInPage())
              ],
            ),
          ),
        ));
  }
}
