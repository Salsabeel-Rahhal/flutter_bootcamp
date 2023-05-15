import 'package:flutter/material.dart';
import 'package:project/view/screen/sign_up_page.dart';

abstract class SignInController extends PageController {
  SignIn();
  ToSignUp();
}

class SignInControllerImp extends SignInController {
  @override
  SignIn() {}

  @override
  ToSignUp() {
    // Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => SignUpPage(),));
  }
}
