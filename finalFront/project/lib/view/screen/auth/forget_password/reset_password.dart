import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/controller/auth/reset_password_controller.dart';
import 'package:project/view/widget/custom_auth/custom_button_auth.dart';
import 'package:project/view/widget/custom_auth/custom_text_form_auth.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import '../../../widget/custom_bars/my_app_bar.dart';

class ResetPage extends StatefulWidget {
  const ResetPage({super.key});

  @override
  State<ResetPage> createState() => _ResetPageState();
}

class _ResetPageState extends State<ResetPage> {
  ResetPasswordControllerImp controller = Get.put(ResetPasswordControllerImp());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize:
              const Size.fromHeight(200.0), // here the desired height
          child: MyAppBar(
            title: "Reset Password",
            body: "",
            descriotion: "",
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(children: [
          const SizedBox(
            height: 20,
          ),
          GradientText(
              "Set the new password for your account so you can sign in and access all the features",
              textAlign: TextAlign.center,
              colors: const [
                Color.fromARGB(255, 74, 20, 140),
                Color.fromARGB(255, 6, 122, 51)
              ]),
          const SizedBox(
            height: 20,
          ),
          CustomTextFormAuth(
            hintText: "Enter your new password",
            labelText: "New Password",
            iconData: Icons.password_outlined,
            // valid: (val) {
            //   return validInput(val!, 5, 20, "password");
            // },
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextFormAuth(
            hintText: "Re-Enter your new password",
            labelText: "Confirm Password",
            iconData: Icons.password_outlined,
            // valid: (val) {
            //   return validInput(val!, 5, 20, "password");
            // },
          ),
          const SizedBox(
            height: 20,
          ),
          CustomButtonAuth(
              text: "Save", onPressed: controller.goToSuccessReset())
        ]),
      ),
    );
  }
}
