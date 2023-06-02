import 'package:project/view/screen/auth/forget_password/verfication_page.dart';
import 'package:project/view/widget/custom_auth/custom_text_form_auth.dart';
import '../../../../controller/auth/forget_password_controller.dart';
import '../../../widget/custom_auth/custom_button_auth.dart';
import '../../../widget/custom_bars/my_app_bar.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final controller = ForgetControllerImp();
  bool isObsecure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize:
                const Size.fromHeight(200.0), // here the desired height
            child: MyAppBar(
              title: "Forget Password",
              image: AssetImage(
                "assets/images/onboardingone.png",
              ),
            )),
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
          child: ListView(children: [
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Check Email",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              " Enter your email that we will send the OTP code on it ",
              textAlign: TextAlign.center,
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
                width: 150,
                text: "Check",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ForgetPassword()));
                }),
            const SizedBox(
              height: 50,
            ),
          ]),
        ));
  }
}
