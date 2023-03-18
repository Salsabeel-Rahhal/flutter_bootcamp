import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/auth/login_controller.dart';
import '../../widget/textsignup.dart';
import '../../widget/customButton.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isObsecure = true;
  @override
  Widget build(BuildContext context) {
    LoginAndSignUpController controller = Get.put(LoginAndSignUpController());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
          child: ListView(children: [
            const SizedBox(
              height: 20,
            ),
            Text(
              "Selamat Datang di \nBUMDES",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Silahkan masukan data untuk login",
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Color.fromARGB(255, 124, 126, 126), fontSize: 12),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Email/ Phone",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.black),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: controller.email,
              decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  label: Text(
                    "Masukan Alamat Email/ No Telepon Ands",
                    style: TextStyle(fontSize: 13),
                  ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.white,
                  ))),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Password",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.black),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: controller.password,
              obscureText: true,
              decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  suffixIcon: IconButton(
                      icon: Icon(
                          isObsecure ? Icons.visibility : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          isObsecure = !isObsecure;
                        });
                      }),
                  label: Text(
                    "Masukan Kata Sandi Akun",
                    style: TextStyle(fontSize: 13),
                  ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.white,
                  ))),
            ),
            SizedBox(
              height: 40,
            ),
            // InkWell(
            //   child: const Text(
            //     "Forget Password",
            //     textAlign: TextAlign.end,
            //   ),
            //   onTap: () {
            //     controller.goToForgetPassword();
            //   },
            // ),
            CustomButtonAuth(
              text: "Sign In",
              onPressed: () {},
            ),
            SizedBox(
              height: 50,
            ),
            CustomTextSign(
              textOne: "Forget Password",
              textTwo: "SignUp",
              onTap: () {},
            )
          ]),
        ));
  }
}
