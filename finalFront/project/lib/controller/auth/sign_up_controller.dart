import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/constant/routes.dart';

abstract class SignUpController extends GetxController {
  signUp();
}

class SignUpControllerImp extends SignUpController {
  // Controller for Sign Up
  late TextEditingController signUpEmail;
  late TextEditingController signUppassword;
  late TextEditingController userName;
  late TextEditingController phone;

  @override
  signUp() {}

  @override
  goToSignUp() {
    Get.toNamed(AppRoute.signUp);
  }

  @override
  void onInit() {
    signUpEmail = TextEditingController();
    signUppassword = TextEditingController();
    userName = TextEditingController();
    phone = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    signUpEmail.dispose();
    signUppassword.dispose();
    userName.dispose();
    phone.dispose();
    super.dispose();
  }
}
