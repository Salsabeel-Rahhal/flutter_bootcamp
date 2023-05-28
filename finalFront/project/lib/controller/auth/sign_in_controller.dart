import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:project/core/constant/routes.dart';

abstract class SignInController extends GetxController {
  login();
  goToSignUp();
  goToForgetPassword();
}

class SignInControllerImp extends SignInController {
  // Controller for Login
  late TextEditingController email;
  late TextEditingController password;
  // GlobalKey<FormState> keyForm = GlobalKey<FormState>();
  // // Controller for Sign Up
  // late TextEditingController signUpEmail;
  // late TextEditingController signUppassword;
  // late TextEditingController userName;
  // late TextEditingController phone;

  @override
  login() {
    // var formData = keyForm.currentState;
    // if (formData!.validate()) {
    //   print(" valid");
    // } else {
    //   print("not valid");
    // }
  }

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
    // Navigator.push(context, MaterialPageRoute(builder: (context)=> ForgetPassword()));
  }
}
