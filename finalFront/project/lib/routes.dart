import 'package:flutter/cupertino.dart';
import 'package:project/core/constant/routes.dart';
import 'package:project/view/screen/on_boarding_page.dart';
import 'package:project/view/screen/sign_up_page.dart';
import 'view/screen/sign_in_page.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.SignIn: (context) => SignInPage(),
  AppRoute.SignUp: (context) => SignUpPage(),
  AppRoute.OnBoarding: (context) => OnBoardingPage(),
};
