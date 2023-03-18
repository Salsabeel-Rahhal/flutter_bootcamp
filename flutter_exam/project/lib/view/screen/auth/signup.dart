import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widget/customButton.dart';
import '../../../controller/auth/signUp_controller.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isObsecure = true;
  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controller = Get.put(SignUpControllerImp());
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
              "User Name",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.black),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: controller.userName,
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
              height: 30,
            ),
            Text(
              "Email",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.black),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: controller.signUpEmail,
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
              controller: controller.signUppassword,
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
              height: 30,
            ),
            Text(
              "Phone",
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
              height: 40,
            ),
            CustomButtonAuth(
              text: "Sign In",
              onPressed: () {},
            ),
            SizedBox(
              height: 50,
            ),
          ]),
        ));
  }
}
