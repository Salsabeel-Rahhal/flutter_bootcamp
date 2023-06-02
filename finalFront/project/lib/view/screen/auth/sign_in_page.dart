import 'package:gradient_borders/input_borders/gradient_outline_input_border.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:project/main.dart';
import 'package:project/view/screen/auth/sign_up_page.dart';
import 'package:email_validator/email_validator.dart';
import '../../widget/custom_auth/custom_text.dart';
import '../../widget/custom_bars/my_app_bar.dart';
import '../../../controller/user_controller.dart';
import 'forget_password/forget_password.dart';
import 'package:flutter/material.dart';
import '../home_page.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool _isObscure = true;
  final _keyForm = GlobalKey<FormState>();
  final _controllerEmail = TextEditingController();
  final _controllerPassword = TextEditingController();
  final String body = "";
  final String desc = "";

  _handleSignInAction(BuildContext context) {
    if (_keyForm.currentState != null && _keyForm.currentState!.validate()) {
      String email = _controllerEmail.text;
      String password = _controllerPassword.text;

      try {
        EasyLoading.show(status: "Loading");
        UserController().signIn(email, password);
        EasyLoading.dismiss();

        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SplachPage()),
        );
        // return true; // sign-in was successful
      } catch (ex) {
        EasyLoading.dismiss();
        EasyLoading.showError(ex.toString());
        // return false; // sign-in failed
      }
    }
    // return false; // form validation failed
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(200.0),
        child: MyAppBar(
          title: "Sign In",
          body: body,
          description: desc,
        ),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 15),
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: ListView(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                " Welcome Back ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                " You can sign in with email or continue with \n social media",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black54),
              ),
              const SizedBox(
                height: 20,
              ),
              Form(
                key: _keyForm,
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: TextFormField(
                        controller: _controllerEmail,
                        validator: (text) {
                          if (text == null || !EmailValidator.validate(text)) {
                            return "Please add correct email address";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 8,
                            horizontal: 30,
                          ),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          label: const Text(
                            "Email",
                            style: TextStyle(fontSize: 15),
                          ),
                          hintText: "Enter your email",
                          hintStyle: const TextStyle(fontSize: 15),
                          suffixIcon: const Icon(
                            Icons.email_outlined,
                            size: 18,
                          ),
                          border: GradientOutlineInputBorder(
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromARGB(255, 74, 20, 140),
                                Color.fromARGB(255, 6, 122, 51),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: TextFormField(
                        controller: _controllerPassword,
                        validator: (value) {
                          if (value == null || value.length < 2) {
                            return "Please enter a valid password";
                          }
                          return null;
                        },
                        obscureText: _isObscure,
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                              vertical: 8,
                              horizontal: 30,
                            ),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            label: const Text(
                              "Password",
                              style: TextStyle(fontSize: 15),
                            ),
                            hintText: "Enter your password",
                            hintStyle: const TextStyle(fontSize: 15),
                            // suffixIcon: const Icon(
                            //   Icons.password_outlined,
                            //   size: 18,
                            // ),
                            border: GradientOutlineInputBorder(
                              gradient: const LinearGradient(
                                colors: [
                                  Color.fromARGB(255, 74, 20, 140),
                                  Color.fromARGB(255, 6, 122, 51),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            suffixIcon: IconButton(
                                icon: Icon(
                                  _isObscure
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  size: 20,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _isObscure = !_isObscure;
                                  });
                                })),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 30),
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromARGB(255, 74, 20, 140),
                            Color.fromARGB(255, 182, 153, 217),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: MaterialButton(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        onPressed: () {
                          if (_keyForm.currentState!.validate()) {
                            _handleSignInAction(context);
                          }
                        },
                        child: const Text(
                          " Sign In",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              CustomText(
                textOne: "",
                textTwo: "Forget Password ? ",
                onTap1: ForgetPassword(),
              ),
              const SizedBox(height: 20),
              CustomText(
                textOne: "Don't have an account ?",
                textTwo: " Sign Up",
                onTap1: const SignUpPage(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
