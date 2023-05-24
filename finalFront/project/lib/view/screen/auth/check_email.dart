import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/view/screen/auth/forget_password/verfication_page.dart';
import 'package:project/view/screen/auth/success_sign_up.dart';
import 'package:project/view/screen/auth/verfiy_sign_up.dart';
import 'package:project/view/widget/custom_auth/custom_text_form_auth.dart';
import '../../../../controller/auth/forget_password_controller.dart';

import '../../../controller/auth/check_email_controller.dart';
import '../../widget/custom_auth/custom_button_auth.dart';
import '../../widget/custom_bars/my_app_bar.dart';

class CheckEmail extends StatefulWidget {
  const CheckEmail({super.key});

  @override
  State<CheckEmail> createState() => _CheckEmailState();
}

class _CheckEmailState extends State<CheckEmail> {
  CheckEmailImp controller = Get.put(CheckEmailImp());
  bool isObsecure = true;
  String body = "Reset Password";
  String desc = "";
  @override
  Widget build(BuildContext context) {
    // late DateTime startDate = DateTime.now();

    // LoginAndSignUpController controller = Get.put(LoginAndSignUpController());
    return Scaffold(
        appBar: PreferredSize(
            preferredSize:
                const Size.fromHeight(200.0), // here the desired height
            child: MyAppBar(
              title: "Forget Password",
              body: body,
              descriotion: desc,
            )),
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
          child: ListView(children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Account successfully created",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Please Enter your email address to recive a verfication code.",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color.fromARGB(255, 124, 126, 126),
                fontSize: 15,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            CustomTextFormAuth(
              hintText: "Email ",
              labelText: "",
              iconData: Icons.email_outlined,
              // valid: (val) {
              //   return validInput(val!, 5, 100, "email");
              // },
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButtonAuth(
                text: "Check",
                onPressed: Navigator.push(context,
                    MaterialPageRoute(builder: (context) => VerfiySignUp()))),
            const SizedBox(
              height: 50,
            ),
          ]),
        ));
  }
}
