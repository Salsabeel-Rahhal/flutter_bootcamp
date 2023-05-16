import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/view/screen/auth/verfication_page.dart';
import 'package:project/view/widget/custom_auth/custom_text_form_auth.dart';
import '../../../controller/auth/forget_password_controller.dart';
import '../../widget/custom_auth/custom_button_auth.dart';
import '../../widget/my_app_bar.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  ForgetControllerImp controller = Get.put(ForgetControllerImp());
  bool isObsecure = true;
  String body = "Reset Password";
  String desc = "";
  @override
  Widget build(BuildContext context) {
    late DateTime _startDate = DateTime.now();

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
              "Check Email",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              " Enter your email that we will send the OTP code on it ",
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
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomButtonAuth(
              text: "Check",
              onPressed: VerficationPage(),
            ),
            const SizedBox(
              height: 50,
            ),
          ]),
        ));
  }
}
