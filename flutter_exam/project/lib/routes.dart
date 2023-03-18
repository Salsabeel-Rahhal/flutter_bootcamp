import 'dart:js';

import 'package:flutter/material.dart';
import 'package:project/view/screen/auth/forget_password.dart';
import 'package:project/view/screen/auth/login.dart';
import 'package:project/view/screen/auth/signUp.dart';
import 'package:project/view/screen/auth/onboarding.dart';

import 'core/constant/routes.dart';

Map<String, Widget Function(BuildContext)> routes = {
  //Auth
  AppRoute.login: (context) => const Login(),
  AppRoute.signUp: (context) => const SignUp(),
  AppRoute.forgetPassword: (context) => const ForgetPassword(),

  //on boarding
  AppRoute.onboarding: (context) => const OnBoarding(),
};
