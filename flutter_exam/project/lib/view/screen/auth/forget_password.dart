import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/controller/auth/forget_controller.dart';
import '../../../controller/auth/login_controller.dart';
import '../../widget/textsignup.dart';
import '../../widget/customButton.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  ForgetControllerImp controller = Get.put(ForgetControllerImp());
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
              "Reset Password",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Masukan Email/ No ,Hp akun untuk mereset Kata sandi Anda",
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
              controller: controller.phone,
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
            CustomButtonAuth(
              text: "Reset",
              onPressed: () {},
            ),
            SizedBox(
              height: 50,
            ),
          ]),
        ));
  }
}
