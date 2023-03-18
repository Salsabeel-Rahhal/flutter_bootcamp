import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../controller/auth/login_controller.dart';

class CustomTextSign extends StatelessWidget {
  final String textOne;
  final String textTwo;
  final void Function()? onTap;
  const CustomTextSign(
      {super.key,
      required this.textOne,
      required this.textTwo,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    LoginAndSignUpController controller = Get.put(LoginAndSignUpController());

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            controller.goToForgetPassword();
          },
          child: Text(
            textOne,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        InkWell(
          onTap: () {
            controller.goToSignUp();
          },
          child: Text(
            textTwo,
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
