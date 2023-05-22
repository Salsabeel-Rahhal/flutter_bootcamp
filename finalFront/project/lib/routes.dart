import 'package:flutter/cupertino.dart';
import 'package:project/core/constant/routes.dart';
import 'package:project/view/screen/auth/forget_password/forget_password.dart';
import 'package:project/view/screen/auth/forget_password/reset_password.dart';
import 'package:project/view/screen/auth/forget_password/success_reset.dart';
import 'package:project/view/screen/auth/success_sign_up.dart';
import 'package:project/view/screen/auth/forget_password/verfication_page.dart';
import 'package:project/view/screen/on_boarding_page.dart';
import 'package:project/view/screen/auth/sign_up_page.dart';
import 'view/screen/auth/sign_in_page.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.onBoarding: (context) => const OnBoardingPage(),
  AppRoute.signIn: (context) => SignInPage(),
  AppRoute.signUp: (context) => SignUpPage(),
  AppRoute.forgetPassword: (context) => const ForgetPassword(),
  AppRoute.verfication: (context) => const VerficationPage(),
  AppRoute.rasetPassword: (context) => const ResetPage(),
  AppRoute.successReset: (context) => const SuccessReset(),
  AppRoute.successSign: (context) => const SuccessSignUp(),
};
