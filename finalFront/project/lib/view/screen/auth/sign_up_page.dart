import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:gradient_borders/input_borders/gradient_outline_input_border.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:project/view/screen/auth/sign_in_page.dart';
import 'package:project/view/widget/custom_auth/custom_button_auth.dart';
import 'package:project/view/widget/custom_auth/custom_text_form_auth.dart';
import '../../../controller/auth/sign_in_controller.dart';
import '../../widget/country_picker.dart';
import '../../widget/custom_auth/custom_text.dart';
import '../../widget/custom_bars/my_app_bar.dart';

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
                  hintText: "Enter a password ",
                  labelText: "Password",
                  iconData: Icons.lock_outlined,
                  controller: _controllerPassword,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 30),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        label: Text(
                          " Phone Number",
                          style: const TextStyle(fontSize: 15),
                        ),
                        hintText: "Enter Your Phone Number",
                        hintStyle: const TextStyle(fontSize: 15),
                        suffixIcon: Icon(
                          Icons.phone_android_outlined,
                          size: 18,
                        ),
                        border: GradientOutlineInputBorder(
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromARGB(255, 74, 20, 140),
                                Color.fromARGB(255, 6, 122, 51)
                              ],
                            ),
                            borderRadius: BorderRadius.circular(30))),
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),
                CustomButtonAuth(
                  text: " Sign Up",
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
