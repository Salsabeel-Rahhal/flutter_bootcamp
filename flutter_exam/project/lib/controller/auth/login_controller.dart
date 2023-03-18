import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:flutter/gestures.dart';
import 'package:project/core/constant/routes.dart';

abstract class SignInController extends GetxController {
  login();
  goToSignUp();
  goToForgetPassword();
}

class LoginAndSignUpController extends SignInController {
  // Controller for Login
  late TextEditingController email;
  late TextEditingController password;

  // Controller for Sign Up
  late TextEditingController signUpEmail;
  late TextEditingController signUppassword;
  late TextEditingController userName;
  late TextEditingController phone;

  @override
  login() {}

  @override
  goToSignUp() {
    Get.toNamed(AppRoute.signUp);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToForgetPassword() {
    Get.toNamed(AppRoute.forgetPassword);
  }
}
