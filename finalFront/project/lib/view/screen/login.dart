import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:project/view/screen/auth/forget_password/forget_password.dart';
import 'package:project/view/screen/auth/sign_up_page.dart';
import 'package:project/view/screen/home_page.dart';

import '../../controller/user_controller.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  bool _isObscure = true;
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  _handleSignInAction(BuildContext context) {
    final storage = FlutterSecureStorage();
    EasyLoading.show(status: "Loading");
    UserController()
        .signIn(emailController.text, passwordController.text)
        .then((value) async {
      EasyLoading.dismiss();
      await FlutterSecureStorage()
          .write(key: "token", value: "${value.type} ${value.token}");

      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    }).catchError((ex) {
      EasyLoading.dismiss();
      EasyLoading.showError(ex.toString());
    });
  }

  @override
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Column(children: [
                  SizedBox(height: width / 2),
                  Padding(
                    padding: EdgeInsets.all(height / 16),
                    // child: Image.asset(
                    //   'assets/images/profile.png',
                    //   width: width / 1,
                    // ),
                  ),

                  SizedBox(
                    width: width / 1.12,
                    height: height / 12,
                    child: TextFormField(
                      controller: emailController,
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Please enter your email";
                        }
                      },
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 3, color: Color(0xFFf16b26)),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          errorStyle: const TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                          contentPadding: const EdgeInsets.all(15),
                          isDense: true,
                          fillColor: Colors.white,
                          filled: true,
                          border: const OutlineInputBorder(),
                          hintText: 'Email',
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                          )),
                    ),
                  ),
                  SizedBox(
                    width: width / 1.12,
                    height: height / 12,
                    child: TextFormField(
                      controller: passwordController,
                      validator: (val) {
                        if (val!.length == 0)
                          return "Did you forgot to enter a password !";

                        if (val.length < 6)
                          return "password must be more than 6 characters";
                      },
                      obscureText: _isObscure,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 3, color: Color(0xFFf16b26)),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          errorStyle: const TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                          contentPadding: const EdgeInsets.all(15),
                          isDense: true,
                          fillColor: Colors.white,
                          filled: true,
                          border: const OutlineInputBorder(),
                          hintText: 'password',
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          suffixIcon: IconButton(
                              icon: Icon(_isObscure
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                              onPressed: () {
                                setState(() {
                                  _isObscure = !_isObscure;
                                });
                              })),
                    ),
                  ),
                  SizedBox(
                    width: width / 1.12,
                    height: height / 15,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ForgetPassword()));
                      },
                      child: const Text(
                        "Did You Forget Your Passwored?",
                        style: TextStyle(
                          color: Colors.black38,
                        ),
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ),
                  // ),
                  SizedBox(
                    width: width / 1.12,
                    height: height / 17,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            backgroundColor: const Color(0xFFf16b26),
                            padding: const EdgeInsets.all(10)),
                        child: const Text(
                          "Log In",
                          style: TextStyle(color: Colors.white70, fontSize: 15),
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            _handleSignInAction(context);
                          }
                        }),
                  ),
                  SizedBox(
                    width: width / 1.12,
                    height: height / 8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Expanded(
                          child: Divider(
                            color: Colors.white,
                            indent: 20.0,
                            endIndent: 10.0,
                            thickness: 1,
                          ),
                        ),
                        Text(
                          "OR",
                          style: TextStyle(color: Colors.white),
                        ),
                        Expanded(
                          child: Divider(
                            color: Colors.white,
                            indent: 10.0,
                            endIndent: 20.0,
                            thickness: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
                SizedBox(
                  child: Column(
                    children: [
                      const Divider(thickness: 1, color: Colors.black),
                      SizedBox(
                        height: width / 6.5,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Dont have an acount ?",
                              style: TextStyle(
                                color: Color(0xFFf16b26),
                              ),
                            ),
                            InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => SignUpPage(),
                                      ));
                                },
                                child: const Text(
                                  " Sign up",
                                  style: TextStyle(color: Colors.black),
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
