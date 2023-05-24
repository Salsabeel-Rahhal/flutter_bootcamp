import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:gradient_borders/input_borders/gradient_outline_input_border.dart';
import 'package:project/view/screen/auth/sign_up_page.dart';
import '../../../controller/user_controller.dart';
import '../../widget/custom_auth/custom_text.dart';
import 'package:project/view/widget/custom_auth/custom_button_auth.dart';
import 'package:project/view/widget/custom_auth/custom_text_form_auth.dart';

import '../../widget/custom_bars/my_app_bar.dart';
import '../home_page.dart';
import 'forget_password/forget_password.dart';

class SignInPage extends StatelessWidget {
  SignInPage({super.key});
  final controller = PageController();
  final _controllerEmail = TextEditingController();
  final _controllerPassword = TextEditingController();
  String body = "";
  String desc = "";
  _handleSignInAction(BuildContext context) {
    final storage = FlutterSecureStorage();
    EasyLoading.show(status: "Loading");
    UserController()
        .signIn(_controllerEmail.text, _controllerPassword.text)
        .then((value) async {
      EasyLoading.dismiss();
      await FlutterSecureStorage()
          .write(key: "token", value: "${value.type} ${value.token}");

      // Navigator.pop(context, true);
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    }).catchError((ex) {
      EasyLoading.dismiss();
      EasyLoading.showError(ex.toString());
    });
  }

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
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: TextFormField(
                    controller: _controllerEmail,
                    validator: (text) {
                      if (!EmailValidator.validate(text!)) {
                        return "Please add correct email address";
                      }
                    },
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 30),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        label: const Text(
                          "Email",
                          style: TextStyle(fontSize: 15),
                        ),
                        hintText: "Enter your email ",
                        hintStyle: const TextStyle(fontSize: 15),
                        suffixIcon: const Icon(
                          Icons.email_outlined,
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

                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: TextFormField(
                    controller: _controllerPassword,
                    validator: (text) {
                      if (text!.length < 8) {
                        return "Please add a valid passowrd";
                      }
                    },
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 30),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        label: const Text(
                          "Password",
                          style: TextStyle(fontSize: 15),
                        ),
                        hintText: "Enter your password",
                        hintStyle: const TextStyle(fontSize: 15),
                        suffixIcon: const Icon(
                          Icons.email_outlined,
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
                CustomText(
                  textOne: "",
                  textTwo: "Forget Password ? ",
                  onTap: const ForgetPassword(),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromARGB(255, 74, 20, 140),
                          Color.fromARGB(255, 182, 153, 217)
                        ],
                      ),
                      borderRadius: BorderRadius.circular(25.0)),
                  child: MaterialButton(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    onPressed: () => _handleSignInAction(context),
                    child: const Text(
                      " Sign In",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                // CustomButtonAuth(
                //   text: " Sign In",
                //   onPressed: () => _handleSignInAction(context),
                // ),
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
